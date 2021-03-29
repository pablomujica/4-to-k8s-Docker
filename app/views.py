from app import app
import socket


@app.route('/')
def home():
    return socket.gethostname()
