import 'package:flutter/material.dart';

void mian() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double result = 0;
  String theInterface = '';
  String preResult = '';
  double? num1;
  Widget addingText(String text) {
    return TextButton(
      onPressed: () {
        setState(() {
          preResult += text;
          print(theInterface);
        });
      },
      child: Text(text),
    );
  }

  Widget addingSignText(String sign) {
    return TextButton(
      onPressed: signFunction,
      child: Text(sign),
    );
  }

  void signFunction() {
    setState(() {
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
    });
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
                preResult = result.toString();
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                  color: Colors.blue[200],
                  width: 300,
                  height: 80,
                  child: Text(theInterface)),
              Container(
                  color: Colors.blue[200],
                  width: 300,
                  height: 80,
                  child: const Text("Hi")),
              Column(
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
            ],
          ),
        ),
      ),
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