import 'dart:io';
import 'dart:math';

void main() {
  List<int> vichislenie(List<List<int>> temperature) {
    List<int> sr_temper = [];
    for (int i = 0; i < 12; i++) {
      int a = 0;
      for (int j = 0; j < 30; j++) {
        a += temperature[i][j];
      }
      a ~/= 30;
      sr_temper.add(a);
    }
    return (sr_temper);
  }

  int max = 31;
  int min = -12;

  List<List<int>> temperature = List.generate(
      12, (i) => List.generate(30, (j) => min + Random().nextInt(max - min)));
  List<int> sr_temp = vichislenie(temperature);
  print(sr_temp);
}
