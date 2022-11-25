import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.write("Введите строку: ");
  String? ss = stdin.readLineSync();
  String s = "Start " "$ss" " end";

  final splitted = ss!.split(' ');
  print("количество слов: ${splitted.length}");

  print(s);
}
