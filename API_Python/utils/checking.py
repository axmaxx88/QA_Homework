"""Check response methods"""
import json
from requests import Response

class Checking:

    """Check Status Code method"""
    @staticmethod
    def check_status_code(response: Response, status_code):
        assert status_code == response.status_code
        if response.status_code == status_code:
            print(f"Successful! Status code = {status_code}")
        else:
            print(f"Failed! Status code = {status_code}")

    """Method to check required fields in request response"""
    @staticmethod
    def check_json_token(response: Response, expected_value):
        token = json.loads(response.text)
        assert list(token) == expected_value
        print("All fields are presented")




