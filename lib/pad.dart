import 'package:flutter/material.dart';

List<List<String>> no = [
  ['7', '8', '9'],
  ['4', '5', '6'],
  ['1', '2', '3'],
  ['00', '0', '.'],
];
List<Widget> pad() {
  List<Widget> pads = [];

  for (int i = 0; i < 4; i++) {}

  return pads;
}

List<Widget> subpads(List<String> text) {
  List<Widget> subpad = [];
  return subpad;
}

class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//Column(
//  children:[
//    Row,
//    Row,
//    Row,
//    Row,
// ]
//)