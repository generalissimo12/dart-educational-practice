import 'dart:io';
import 'dart:math';

void main() {
  print("введите мин");
  int min = int.parse(stdin.readLineSync()!);
  print("введите мах");
  int max = int.parse(stdin.readLineSync()!);

  List<int> zapol(int min, int max) {
    List<int> a =
        List.generate(10, (index) => (Random().nextInt(max - min) + min));

    return (a);
  }

  List a = zapol(min, max);

  for (int i = 0; i < a.length; i++) {
    stdout.write("${a[i]} ");
  }
}
