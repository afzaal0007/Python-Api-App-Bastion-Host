# app.py  
from flask import Flask  
from datetime import datetime  

app = Flask(__name__)  

@app.route('/datetime', methods=['GET'])  
def get_datetime():  
    now = datetime.now()  
    current_time = now.strftime("%Y-%m-%d %H:%M:%S")  
    return {"current_datetime": current_time}  

if __name__ == '__main__':  
    app.run(host='0.0.0.0', port=5000)