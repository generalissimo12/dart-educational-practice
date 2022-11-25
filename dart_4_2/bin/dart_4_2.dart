import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  var input = File("numsTask2.txt");
  input.openRead();

  Stream<String> lines =
      input.openRead().transform(utf8.decoder).transform(LineSplitter());
  String nums_txt = "";
  try {
    await for (var line in lines) {
      nums_txt += line;
    }
  } catch (e) {
    print('Error: $e');
  }

  List<double> ai = [];
  String vrem = "";
  double out = 0;

  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != ";") {
      vrem += nums_txt[i];
    }
    if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
      ai.add(double.parse(vrem));
      vrem = "";
    }
  }

  for (int i = 0; i < ai.length; i++) {
    if (ai[i] > 0) {
      out += ai[i];
    }
    if (ai[i] == 0) {
      i = ai.length;
    }
  }
  print(out);
}
