from bottle import *
import urllib.request, json
with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())
@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")

@route('/')
def index():
    return template("mið.tpl",data=data)

@route('/allt/<name>')
def allt(name):
    return template('mið2.tpl',data=data,name=name)
@route('/allt2/<name>')
def allt2(name):
    return template('mið3.tpl',data=data, name=name)

@error(404)
def villa(error):
    return("vefsíða ekki til")

run(host='localhost', port=8080)
