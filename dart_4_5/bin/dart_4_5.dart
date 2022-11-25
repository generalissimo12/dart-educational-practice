import 'dart:io';
import 'dart:math';

void main() {
  int x_0 = -1;
  int x_1 = 3;
  int y_0 = -2;
  int y_1 = 4;
  print("Введите А");
  double a = double.parse(stdin.readLineSync()!);
  print("Введите В");
  double b = double.parse(stdin.readLineSync()!);

  if (x_0 < a && a < x_1 && y_0 < b && b < y_1) {
    print("Точка принадлежит области");
  } else {
    print("Точка не принадлежит области");
  }
}
