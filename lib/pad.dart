import 'package:flutter/material.dart';

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
      TextButton(
        onPressed: () {},
        child: Text(subPadList[i]),
      ),
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
        TextButton(
          onPressed: () {},
          child: Text(signs[i]),
        ),
      );
    } else {
      allSigns.add(
        TextButton(
          onPressed: () {},
          child: Text(signs[i]),
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
    if (i != 1) {
      topBarWidget.add(
        TextButton(
          onPressed: () {},
          child: Text(topBar[i]),
        ),
      );
    } else {
      topBarWidget.add(
        TextButton(
          onPressed: () {},
          child: topBar[1],
        ),
      );
    }
  }
  return topBarWidget;
}
