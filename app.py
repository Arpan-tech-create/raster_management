from flask import Flask, jsonify
from src.dataset_catalog import catalog_handle
from src.dataset_shard import shard_handle

def register_extensions(app):
    app.register_blueprint(catalog_handle, url_prefix='/dataset')
    app.register_blueprint(shard_handle, url_prefix='/shard')

    @app.errorhandler(400)
    def bad_request(e):
        return jsonify(error=str(e)), 400

app = Flask(__name__)
register_extensions(app)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5678)