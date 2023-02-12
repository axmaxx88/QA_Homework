from requests import Response

from utils.api import GoogleMapsAPI

"""Creating, updating and deleting location"""


class TestCreatePlace:

    def test_create_place(self):

        print("Method Post")
        result_post: Response = GoogleMapsAPI.create_new_place()
        check_post = result_post.json()
        place_id = check_post.get("place_id")

        print("Method Get Post")
        result_get: Response = GoogleMapsAPI.get_new_place(place_id)

        print("Method Put")
        result_put: Response = GoogleMapsAPI.put_new_place(place_id)

        print("Method Get Put")
        result_get: Response = GoogleMapsAPI.get_new_place(place_id)

        print("Method Delete")
        result_delete: Response = GoogleMapsAPI.delete_new_place(place_id)

        print("Method Get Delete")
        result_get: Response = GoogleMapsAPI.get_new_place(place_id)