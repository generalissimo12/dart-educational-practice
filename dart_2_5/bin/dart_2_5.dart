import 'dart:io';
import 'dart:math';

void main() {
  Map<String, dynamic> temperature = {
    'Jan': List.generate(30, (i) => -25 + Random().nextInt(-15 - -25)),
    'Feb': List.generate(30, (i) => -18 + Random().nextInt(-5 - -18)),
    'Mart': List.generate(30, (i) => 1 + Random().nextInt(9 - -1)),
    'Apr': List.generate(30, (i) => 5 + Random().nextInt(14 - -5)),
    'May': List.generate(30, (i) => 10 + Random().nextInt(18 - 9)),
    'Jun': List.generate(30, (i) => 17 + Random().nextInt(27 - 17)),
    'Jul': List.generate(30, (i) => 21 + Random().nextInt(28 - 21)),
    'Avg': List.generate(30, (i) => 18 + Random().nextInt(26 - 18)),
    'Sen': List.generate(30, (i) => 12 + Random().nextInt(15 - 8)),
    'Oct': List.generate(30, (i) => 0 + Random().nextInt(7 - 0)),
    'Nov': List.generate(30, (i) => -12 + Random().nextInt(1 - -20)),
    'Dec': List.generate(30, (i) => -19 + Random().nextInt(-16 - -30)),
  };
  Map<String, dynamic> vichislenie(Map<String, dynamic> temperature) {
    for (String key in temperature.keys) {
      double a = 0;
      for (int i = 0; i < 30; i++) {
        a += temperature[key][i];
      }
      temperature[key] = a ~/ 30;
    }

    return (temperature);
  }

  print(vichislenie(temperature));
}
