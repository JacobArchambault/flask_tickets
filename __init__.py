import os

from flask import Flask, redirect, render_template, url_for

def create_app(test_config=None):
    app = Flask(__name__)
    app.config.from_mapping(
        SECRET_KEY=os.environ.get('SECRET_KEY', default='dev'),
    )

    if test_config is None:
        app.config.from_pyfile('config.py', silent=True)
    else:
        app.config.from_mapping(test_config)
    
    from .models import db
    db.init_app(app)

    @app.route('/')
    def index():
        return redirect(url_for('tickets'))

    @app.route('/tickets')
    def tickets():
        return render_template('tickets_index.html')

    @app.route('/tickets/<int:ticket_id>')
    def tickets_show(ticket_id):
        return render_template('tickets_show.html')


    return app