void main() {
  // Liste hat garantiert immer 3 Elemente
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // Erstelle leere Liste für Temperaturen
  List<double?> temps = [];

  // Füge die Temperaturen der Wetterdaten in die Liste ein
  temps.add(weatherData[0]['temp']);
  temps.add(weatherData[1]['temp']);
  temps.add(weatherData[2]['temp']);

  // Berechnung der Summe und Anzahl der Werte
  double summe_temp = 0;
  int anzahl_temp = 0;

  double summe_rain = 0;
  int anzahl_rain = 0;

  double summe_wind = 0;
  double anzahl_wind = 0;

  for (int i = 0; i < weatherData.length; i++) {
    if ((weatherData[i]['temp']) != null) {
      summe_temp += (weatherData[i]['temp'])!;
      anzahl_temp++;
    }
    if ((weatherData[i]['rain']) != null) {
      summe_rain += (weatherData[i]['rain'])!;
      anzahl_rain++;
    }

    if ((weatherData[i]['wind']) != null) {
      summe_wind += (weatherData[i]['wind'])!;
      anzahl_wind++;
    }
  }

  // Berechne den Durchschnitt der Temperaturen
  double? avgTemp = summe_temp / anzahl_temp;
  print('Durchschnittstemperatur: $avgTemp');

  double? avgRain = summe_rain / anzahl_rain;
  print('Durchschnittsniederschlag: $avgRain');

  double? avgWind = summe_wind / anzahl_wind;
  print('Durchschnittswindstärke: $avgWind');
}
