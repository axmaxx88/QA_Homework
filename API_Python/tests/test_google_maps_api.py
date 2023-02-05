from requests import Response

from utils.api import GoogleMapsAPI

"""Creating, updating and deleting location"""


class TestCreatePlace:

    def test_create_place(self):

        print("Method Post")
        result_post: Response = GoogleMapsAPI.create_new_place()
