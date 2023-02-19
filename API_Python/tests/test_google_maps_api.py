import json

from requests import Response
from utils.checking import Checking
from utils.api import GoogleMapsAPI

"""Creating, updating and deleting location"""


class TestCreatePlace:

    def test_create_place(self):

        print("Method Post")
        result_post: Response = GoogleMapsAPI.create_new_place()
        check_post = result_post.json()
        place_id = check_post.get("place_id")
        Checking.check_status_code(result_post, 200)
        Checking.check_json_token(result_post, ['status', 'place_id', 'scope', 'reference', 'id'])
        # token = json.loads(result_post.text)
        # print(list(token))

        print("Method Get Post")
        result_get: Response = GoogleMapsAPI.get_new_place(place_id)
        Checking.check_status_code(result_get, 200)
        Checking.check_json_token(result_get, ['location', 'accuracy', 'name', 'phone_number', 'address', 'types',
                                               'website', 'language'])
        # token = json.loads(result_get.text)
        # print(list(token))

        print("Method Put")
        result_put: Response = GoogleMapsAPI.put_new_place(place_id)
        Checking.check_status_code(result_put, 200)
        Checking.check_json_token(result_put, ['msg'])

        print("Method Get Put")
        result_get: Response = GoogleMapsAPI.get_new_place(place_id)
        Checking.check_status_code(result_get, 200)
        Checking.check_json_token(result_get, ['location', 'accuracy', 'name', 'phone_number', 'address', 'types',
                                               'website', 'language'])

        print("Method Delete")
        result_delete: Response = GoogleMapsAPI.delete_new_place(place_id)
        Checking.check_status_code(result_delete, 200)
        Checking.check_json_token(result_delete, ['status'])

        print("Method Get Delete")
        result_get: Response = GoogleMapsAPI.get_new_place(place_id)
        Checking.check_status_code(result_get, 404)
        Checking.check_json_token(result_get, ['msg'])

        print("Testing of creating, updating and deleting location was successful")
