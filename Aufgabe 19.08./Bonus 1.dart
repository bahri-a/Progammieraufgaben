void main(List<String> args) {
  double orderValue = 0;
  double distance = 0;
  bool rushHour = false;
  bool isRaining = false;
  int orderSize = 0;
  double Grundliefergebuehr = 0;

  // Werte eingeben

  orderValue = 55.9;
  distance = 8.8;
  rushHour = true;
  isRaining = true;
  orderSize = 6;

  // Grundliefergebühr
  if (distance <= 5) {
    Grundliefergebuehr = 2.5;
  } else if (5 < distance && distance <= 10) {
    Grundliefergebuehr = 3.5;
  } else if (distance > 10) {
    Grundliefergebuehr = 5;
  }
  ;

  // Distanzzuschlag

  if (distance >= 5 && distance % 1 == 0) {
    Grundliefergebuehr + 0.3;
  }

  // Wetterzuschlag bei Regen

  if (isRaining) {
    Grundliefergebuehr + 1.5;
  }

  // Hauptverkehrszeitzuschlag

  if (rushHour) {
    Grundliefergebuehr + 2;
  }

  // Mengenrabatt

  if (orderSize >= 3 && orderSize < 5) {
    orderValue - 0.5;
  } else if (orderSize >= 5 && orderSize < 8) {
    orderValue - 1;
  } else if (orderSize >= 8) {
    orderValue - 2;
  }

  // Mindestbestellwert

  if (orderValue < 15) {
    orderValue + 5;
  }

  //Maximalkosten-Regel

  if (Grundliefergebuehr > (orderValue * 0.4)) {
    print("Achtung 40% Grenze");
  }

  Grundliefergebuehr = (Grundliefergebuehr * 10).ceilToDouble() / 10;
  orderValue = (orderValue * 10).ceilToDouble() / 10;

  if (Grundliefergebuehr < 5) {
    print("Günstige Lieferung");
  } else if (Grundliefergebuehr > 5 && Grundliefergebuehr < 10) {
    print("Standardlieferung");
  } else if (Grundliefergebuehr >= 10) {
    print("Premium-Lieferung");
  }

  print("Lieferkosten: $Grundliefergebuehr");
  print("Bestellwert: $orderValue");
  print("Distanz: $distance");

  print("Gewinn: ${orderValue - Grundliefergebuehr}");
}
