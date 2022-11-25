import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('nums.txt');

  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  List<String> ai = [];
  await for (var line in lines) {
    ai.add(line);
  }
  List<int> transforming(String bub_0) {
    List<int> a = [];
    String bub = "";
    bool m = true;

    for (int i = 0; i < bub_0.length; i++) {
      while (bub_0[i] != " " && m) {
        bub += bub_0[i];
        if (i < bub_0.length - 1) {
          i++;
        } else {
          m = false;
        }
      }
      a.add(int.parse(bub));
      bub = "";
    }
    return (a);
  }

  String aip = '';
  List<int> a = transforming(ai[0]);
  print(a);
  for (int i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      a.remove(a[i]);
    }
  }
  //print(a);
  for (int i = 0; i < a.length; i++) {
    aip = aip + a[i].toString() + " ";
  }
  var sink = file.openWrite();
  sink.write(aip);
  sink.close();
}
