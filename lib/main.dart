import 'package:flutter/material.dart';
import 'package:calculater_flutter/pad.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 80, child: Text("Hi")),
              SizedBox(height: 80, child: Text("Hi")),
              NumberPad(),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberPad extends StatelessWidget {
  const NumberPad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

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