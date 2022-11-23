import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<int> nums = [];
  int sum = 0;
  int p = 1;

  int a = 1;
  while (a != 0) {
    stdout.write("Введите элемент массива: ");

    int a = int.parse(stdin.readLineSync()!);
    if (a == 0) {
      break;
    }
    nums.add(a);
  }

  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  double average = sum / nums.length;
  for (int j = 0; j < nums.length; j++) {
    p *= nums[j];
  }
  print(nums);
  print("Сумма чисел: $sum");
  print("Произведение чисел: $p");
  print("Среднее число среди всех элемнтов: $average");
}
