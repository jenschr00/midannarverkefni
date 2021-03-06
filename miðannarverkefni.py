from bottle import *
import os
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
@route('/allt2/<company>/<name>')
def allt2(company,name):
    return template('mið3.tpl',data=data,company=company,name=name)

@error(404)
def villa(error):
    return("vefsíða ekki til")

run(host='0.0.0.0',port=os.environ.get('PORT'))
