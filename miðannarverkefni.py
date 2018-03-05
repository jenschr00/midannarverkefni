from bottle import *
import urllib.request, json
import os

@route('/')
def index():
    return "Virkar"

run(host='0.0.0.0', port=os.environ.get('PORT'))
