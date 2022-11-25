import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.write('Введите число ');
  int a = int.parse(stdin.readLineSync()!);
  if (a % 10 == 0 && a % 2 == 0) {
    print('число является четным и кратным 10');
  } else {
    print('число не является четным и кратным 10');
  }
}
