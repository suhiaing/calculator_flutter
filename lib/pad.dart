import 'package:flutter/material.dart';

Widget addingText(String text) {
  return TextButton(
    onPressed: () {},
    child: Text(text),
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
        addingText(signs[i]),
      );
    } else {
      allSigns.add(
        TextButton(
          onPressed: () {},
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
        TextButton(onPressed: () {}, child: const Text('AC')),
      );
    } else if (i == 1) {
      topBarWidget.add(
        TextButton(
          onPressed: () {},
          child: topBar[1],
        ),
      );
    } else {
      topBarWidget.add(addingText(topBar[i]));
    }
  }
  return topBarWidget;
}
