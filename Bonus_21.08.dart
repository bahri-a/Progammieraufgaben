enum Character { soldat, medic, support }

enum Tageszeit { morning, noon, evening, night }

enum Wetter { sunny, rainy, stormy }

void main(List<String> args) {
  int? strength;
  Character character;
  Tageszeit tageszeit;
  Wetter wetter;

  character = Character.soldat;
  tageszeit = Tageszeit.morning;
  wetter = Wetter.rainy;

  switch (character) {
    case Character.soldat:
      switch (tageszeit) {
        // tagsüber
        case Tageszeit.morning:
        case Tageszeit.noon:
          strength = 100;
          if (wetter != Wetter.sunny) strength -= 20;
          wetter == Wetter.stormy ? strength -= 10 : strength -= 0;
          print("Dein Soldat hat Strength: $strength");
        // abends
        case Tageszeit.evening:
        case Tageszeit.night:
          strength = 50;
          if (wetter != Wetter.sunny) strength -= 20;
          wetter == Wetter.stormy ? strength -= 10 : strength -= 0;
          print("Dein warrior hat Strength: $strength");
      }

    case Character.medic:
      {
        switch (tageszeit) {
          case Tageszeit.morning:
          case Tageszeit.noon:
            strength = 50;
            wetter == Wetter.sunny ? strength -= 20 : strength += 10;
            print("Dein Medic hat Strength: $strength");
          case Tageszeit.evening:
          case Tageszeit.night:
            strength = 100;
            wetter == Wetter.sunny ? strength -= 20 : strength -= 0;
            print("Dein Medic hat Strength: $strength");
        }
      }

    case Character.support:
      {
        switch (tageszeit) {
          case Tageszeit.morning:
          case Tageszeit.noon:
            strength = 70;
            wetter != Wetter.sunny ? strength += 20 : strength -= 20;
            print("Dein Support hat Strength: $strength");
          case Tageszeit.evening:
          case Tageszeit.night:
            strength = 50;
            wetter != Wetter.sunny ? strength += 20 : strength -= 20;
            print("Dein Support hat Strength: $strength");
        }
      }
  }
}
