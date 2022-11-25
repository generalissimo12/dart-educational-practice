import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  var input = File("numsTask4.txt");
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

  List<int> ai = [];
  String vr = "";

  for (int i = 0; i < nums_txt.length; i++) {
    if (nums_txt[i] != " ") {
      vr += nums_txt[i];
    }
    if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
      ai.add(int.parse(vr));
      vr = "";
    }
  }
  int otvet = 0;
  for (int i = 0; i < ai.length - 1; i++) {
    if (ai[i] == ai[i + 1]) {
      int vr = 1;
      bool vr_0 = true;
      while (ai[i] == ai[i + 1] && vr_0) {
        vr++;
        if (i < ai.length - 2) {
          i++;
        } else {
          vr_0 = false;
        }
      }
      otvet += vr;
    }
  }
  print(otvet);
}
