import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> file = File('qwerty.txt').readAsLinesSync();
  for (var line in file) {
    var splited = line.split(' ');
    file = splited;
  }
  List<String> wasd = [];
  for (var i = 0; i < file.length; i++) {
    if (file[i] != '') {
      wasd.add(file[i]);
    }
  }
  List<int> nums = wasd.map(int.parse).toList();

  int num = 1;
  int t = nums.reduce(min);
  int i = nums.indexOf(t);
  for (i; i < nums.length; i++) {
    num *= nums[i];
  }
  print('произведение элементов после минимального: $num');
}
