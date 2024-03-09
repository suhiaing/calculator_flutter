import 'package:flutter/material.dart';

double result = 0;
String preResult = '';
double? num1;
void addToPreResult() {}
Widget addingText(String text) {
  return TextButton(
    onPressed: () {
      preResult += text;
      print(preResult);
    },
    child: Text(text),
  );
}

Widget addingSignText(String sign) {
  return TextButton(
    onPressed: () {
      try {
        debugPrint("click to sign");
        num1 = double.parse(preResult);
        result = result + num1!;
        num1;
        preResult = '';

        print("this is result $result");
        print(preResult);
      } catch (e) {
        print(e);
      }
    },
    child: Text(sign),
  );
}

List<List<String>> no = [
  ['7', '8', '9'],
  ['4', '5', '6'],
  ['1', '2', '3'],
  ['00', '0', '.'],
];

List<Widget> addingNumPads() {
  List<Widget> allPads = [];
  for (int i = 0; i < no.length; i++) {
    allPads.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: addingSubPad(no[i]),
      ),
    );
  }
  return allPads;
}

List<Widget> addingSubPad(List<String> subPadList) {
  List<Widget> subPads = [];
  for (int i = 0; i < subPadList.length; i++) {
    subPads.add(
      addingText(subPadList[i]),
    );
  }
  return subPads;
}

List signs = ['×', '-', '+', '='];

List<Widget> addingSigns() {
  List<Widget> allSigns = [];

  for (int i = 0; i < signs.length; i++) {
    if (i != 3) {
      allSigns.add(
        addingSignText(signs[i]),
      );
    } else {
      allSigns.add(
        //equal function (=)
        TextButton(
          onPressed: () {
            try {
              result = result + num1!;

              print(result);
            } catch (e) {
              preResult = '';
              print(e);
            }
          },
          child: Text(signs[3]),
        ),
      );
    }
  }
  return allSigns;
}

List topBar = ['AC', const Icon(Icons.backspace_outlined), '%', '÷'];

List<Widget> addingTopBar() {
  List<Widget> topBarWidget = [];
  for (int i = 0; i < topBar.length; i++) {
    if (i == 0) {
      topBarWidget.add(
        TextButton(
            onPressed: () {
              preResult = '';
              result = 0;
            },
            child: const Text('AC')), //AC
      );
    } else if (i == 1) {
      //backspace
      topBarWidget.add(
        TextButton(
          onPressed: () {
            preResult = preResult.substring(0, preResult.length - 1);
            print(preResult);
          },
          child: topBar[1],
        ),
      );
    } else {
      topBarWidget.add(addingSignText(topBar[i]));
    }
  }
  return topBarWidget;
}
