from flask import Blueprint, jsonify, request, abort, Response
from vedas_raster_catalog_lib.vedas_raster_catalog import get_dataset_info, upsert_dataset

catalog_handle = Blueprint('catalog', __name__)


@catalog_handle.route('/<id>', methods=['GET'])
def find_by_id(id):
    return jsonify(get_dataset_info(id))

@catalog_handle.route('/', methods=['GET'])
def list_datasets():
    return jsonify(get_dataset_info(None))

@catalog_handle.route('/', methods=['POST'])
def create_or_update():
    body = request.json
    try:
        upsert_dataset(body.get('id'),
                       body.get('name'),
                       body.get('metadata'),
                       body.get('source_location'),
                       body.get('temporal_frequency'),
                       body.get('projections'),
                       body.get('paused'),
                       body.get('extension'),
                       body.get('resampling'),
                       body.get('compression'))
        return {
            'msg' : 'SUCCESS',
            'id' : body.get('id')
        }
    except Exception as e:
        abort(400, str(e))



