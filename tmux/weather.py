#!/usr/bin/python3
import requests
import json
import pprint
import time

city="Sneek,NL" # city="$1"
id = 2747063
# url="http://openweathermap.org/data/2.1/find/units=metric&name?q=" + city
url = "http://api.openweathermap.org/data/2.5/forecast?id=2747063&units=metric&_=1436000350901"

def winddir_pts(degrees):
	if degrees is None: 
		return None
	return degrees // 22.5

def winddir_text(pts):
    "Convert wind direction from 0..15 to compass point text"
    if pts is None:
        return None
    if not isinstance(pts, int):
        pts = int(pts + 0.5) % 16
    _winddir_text_array = (
        ('N'), ('NNO'), ('NO'), ('ONO'),
        ('O'), ('OZO'), ('ZO'), ('ZZO'),
        ('Z'), ('ZZW'), ('ZW'), ('WZW'),
        ('W'), ('WNW'), ('NW'), ('NNW'),
        )
    return _winddir_text_array[pts]

weather = requests.get(url).json()['list'][0]

wind = weather['wind']['speed']
direction = weather['wind']['deg']
description = weather['weather'][0]['description']
temperature = weather['main']['temp']

output = "{}m/s - {} - {}°C - {} - ".format(wind, winddir_text(winddir_pts(direction)), temperature, description)
print(output)
with open('/home/folkert/.weather', 'w') as weatherfile:
	weatherfile.write(output)
