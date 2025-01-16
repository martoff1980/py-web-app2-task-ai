from django.utils.deprecation import MiddlewareMixin


class CustomMiddleware(MiddlewareMixin):
    def process_request(self, request):
        print("Request received")

    def process_response(self, request, response):
        print("Response sent")
        return response
