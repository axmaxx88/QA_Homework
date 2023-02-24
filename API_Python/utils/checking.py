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

    """Method to check values of required fields in request response"""
    @staticmethod
    def check_json_value(response: Response, field_name, expected_value):
        check = response.json()
        check_info = check.get(field_name)
        assert check_info == expected_value
        print(f"{field_name} is correct!!!")

    """Method to check values of required fields by given words in request response """
    @staticmethod
    def check_json_search_word_in_value(response: Response, field_name, search_word):
        check = response.json()
        check_info = check.get(field_name)
        if search_word in check_info:
            print(f"Word {search_word} is placed!!!")
        else:
            print(f"Word {search_word} is missing!!!")




