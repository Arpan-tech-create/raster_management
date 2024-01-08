from flask import Blueprint, jsonify, request, Response, abort
from vedas_raster_catalog_lib.vedas_raster_catalog import get_shard_info, upsert_dataset_shard
shard_handle = Blueprint('shard', __name__)

@shard_handle.route('/<dataset_id>', methods=['GET'])
def get_dataset_shards(dataset_id):
    print(dataset_id)
    return jsonify(get_shard_info(dataset_id))


@shard_handle.route('/', methods=['POST'])
def post_shard_data():
    body = request.json
    try:
        id = upsert_dataset_shard(body.get('dataset_id'),
                       body.get('folder_name'),
                       body.get('from_time'),
                       body.get('to_time'),
                       body.get('pool'))
        return {
            'msg': 'SUCCESS',
            'id' : id
        }
    except Exception as e:
        abort(400, str(e))