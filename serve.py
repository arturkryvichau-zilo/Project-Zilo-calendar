import http.server
import os

os.chdir("/Users/arturkrivichev/Downloads/DM/Code")

class Handler(http.server.SimpleHTTPRequestHandler):
    def log_message(self, format, *args):
        pass  # suppress logs

http.server.HTTPServer(("", 3000), Handler).serve_forever()
