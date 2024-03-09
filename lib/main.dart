import 'package:flutter/material.dart';
import 'package:calculater_flutter/pad.dart';

void main() {
  runApp(const Calculator());
}

// class Calculator extends StatefulWidget {
//   const Calculator({super.key});

//   @override
//   State<Calculator> createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           leading: const Icon(Icons.arrow_back_ios_sharp),
//           title: const Text(
//             "Calculator",
//             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.dns),
//               onPressed: () {},
//             )
//           ],
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               const SizedBox(
//                 child: Text("Hi"),
//               ),
//               const SizedBox(
//                 child: Text("Hello"),
//               ),
//               Row(
//                 mainAxisAlignment: rowCenter,
//                 children: [
//                   TextButton(onPressed: () {}, child: const Text("AC")),
//                   TextButton(onPressed: () {}, child: const Text("%")),
//                   TextButton(
//                       onPressed: () {},
//                       child: const Icon(Icons.backspace_outlined)),
//                   TextButton(onPressed: () {}, child: const Text("÷")),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: rowCenter,
//                 children: [
//                   TextButton(onPressed: () {}, child: const Text("7")),
//                   TextButton(onPressed: () {}, child: const Text("8")),
//                   TextButton(onPressed: () {}, child: const Text("9")),
//                   TextButton(onPressed: () {}, child: const Text("×")),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: rowCenter,
//                 children: [
//                   TextButton(onPressed: () {}, child: const Text("4")),
//                   TextButton(onPressed: () {}, child: const Text("5")),
//                   TextButton(onPressed: () {}, child: const Text("6")),
//                   TextButton(onPressed: () {}, child: const Text("-")),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: rowCenter,
//                 children: [
//                   TextButton(onPressed: () {}, child: const Text("1")),
//                   TextButton(onPressed: () {}, child: const Text("2")),
//                   TextButton(onPressed: () {}, child: const Text("3")),
//                   TextButton(onPressed: () {}, child: const Text("+")),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: rowCenter,
//                 children: [
//                   TextButton(onPressed: () {}, child: const Text("00")),
//                   TextButton(onPressed: () {}, child: const Text("0")),
//                   TextButton(onPressed: () {}, child: const Text(".")),
//                   TextButton(onPressed: () {}, child: const Text("=")),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: addingTopBar(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: addingNumPads(),
                  ),
                  Column(
                    children: addingSigns(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
