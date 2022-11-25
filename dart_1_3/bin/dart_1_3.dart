import 'dart:io';
import 'dart:math';

void main(arguments) {
  var char = [];
  var s = 0;
  var gratest;
  var less;
  var temporary;

  while (s != '') {
    stdout.write("Введите элемент в список: ");
    String? s = stdin.readLineSync();
    if (s == '') {
      break;
    }
    char.add(s);
  }

  print(char);
  for (int j = 0; j < char.length - 1; j++) {
    for (int i = 0; i < char.length - 1; i++) {
      if (char[i].length > char[i + 1].length) {
        temporary = char[i];
        char[i] = char[i + 1];
        char[i + 1] = temporary;
      }
    }
  }
  print("Самый короткий элемент: ${char.first}");
  print("Самый длинный элемент: ${char.last}");
}
