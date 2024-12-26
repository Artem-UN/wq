from flask import Flask, request, jsonify, render_template
import requests

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/weather', methods=['POST'])
def get_weather():
    data = request.json
    lat, lon = data.get('lat'), data.get('lon')

    # Open-Meteo API URL
    url = f"https://api.open-meteo.com/v1/forecast?latitude={lat}&longitude={lon}&hourly=temperature_2m,weathercode&current_weather=true"

    response = requests.get(url)
    if response.status_code == 200:
        return jsonify(response.json())
    else:
        return jsonify({"error": "Не удалось получить данные"}), response.status_code

if __name__ == '__main__':
    app.run(debug=True)
