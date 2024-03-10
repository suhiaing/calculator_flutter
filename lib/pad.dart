import 'package:flutter/material.dart';

bool initial = true;
double result = 0;
String theInterface = '';
Widget addingText(String text) {
  return TextButton(
    onPressed: () {
      theInterface += text;
      if (initial == true) {
        result += double.parse(text);
      }
      print("Click to $text");
      print("the interface is $theInterface");
      initial = false;
    },
    child: Text(text),
  );
}

double getResult() {
  return result;
}

String getTheInterface() {
  return theInterface;
}

Widget addingSignText(String sign) {
  return TextButton(
    onPressed: () {
      if (initial == false) {
        if (theInterface[theInterface.length - 1] != '+' &&
            theInterface[theInterface.length - 1] != '×' &&
            theInterface[theInterface.length - 1] != '÷') {
          theInterface += sign;
          print("clicked $sign");
        }
      }
    },
    child: Text(sign),
  );
}

void acFun() {
  print("AC Clicked");
  theInterface = '';
  result = 0;
}

void backSpaceFun() {
  theInterface = theInterface.substring(0, theInterface.length - 1);
  print(theInterface);
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
              result = double.parse(theInterface);
              theInterface = result.toString();
              print(result);
            } catch (e) {
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
        const TextButton(onPressed: acFun, child: Text('AC')), //AC
      );
    } else if (i == 1) {
      //backspace
      topBarWidget.add(
        TextButton(
          onPressed: backSpaceFun,
          child: topBar[1],
        ),
      );
    } else {
      topBarWidget.add(addingSignText(topBar[i]));
    }
  }
  return topBarWidget;
}
