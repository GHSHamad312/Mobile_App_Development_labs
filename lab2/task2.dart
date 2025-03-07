void main() {
  try {
    fetch_weather().then((p) {
      print("weather is ${p["weather"]} and humidity ${p["humidity"]} ");
    });
  } catch (e) {
    print(e);
  }
  print("hello");
}

Future<Map<String, String>> fetch_weather() {
  Duration delay = Duration(seconds: 3);
  return Future.delayed(delay, () {
    return {"weather": "sunny", "humidity": "90%"};
  });
}
