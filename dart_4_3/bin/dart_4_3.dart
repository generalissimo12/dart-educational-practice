import 'dart:core';
import 'dart:io';

void main(List<String> arguments) {
  List<String> temp = [];
  List<String> file = File('numsTask3.txt').readAsLinesSync();
  for (var line in file) {
    var sp = line.split(',');
    temp += sp;
  }

  List<int> nums = temp.map(int.parse).toList();

  for (int j = 0; j < nums.length; j++) {
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] >= nums[i + 1]) {
        int temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
      }
    }
  }
  int min = nums.first;
  int max = nums.last;
  var at = max / min;
  print("Максимальный элемент больше минимального в $at раз");
}
