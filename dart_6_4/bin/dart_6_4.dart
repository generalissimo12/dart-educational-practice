import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  stdout.write('Введите число а: ');
  int a = int.parse(stdin.readLineSync()!);
  int b = 1;
  List<int> nums = [];
  while (b > 0) {
    stdout.write('Введите элемент массива: ');
    b = int.parse(stdin.readLineSync()!);
    if (b < 0) {
      break;
    }
    if (b % a == 0) {
      nums.add(b);
    }
  }
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  print('сумма чисел которые делятся на а без остатка $sum');
}
