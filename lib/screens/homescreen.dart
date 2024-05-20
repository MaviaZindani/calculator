import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:simple_calculator/utlis/colors.dart';
import 'package:simple_calculator/widget/button.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var userinput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    userinput.toString(),
                    overflow: TextOverflow.clip,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  answer.toString(),
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      fontSize: 26,
                      color: const Color.fromARGB(255, 184, 184, 184)),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          titel: 'AC',
                          color: graycolor,
                          onPress: () {
                            userinput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: 'Del',
                          color: graycolor,
                          onPress: () {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '%',
                          color: graycolor,
                          onPress: () {
                            persenttage();
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '÷',
                          color: oragnecolor,
                          onPress: () {
                            userinput += '÷';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          titel: '7',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '7';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '8',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '8';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '9',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '9';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: 'x',
                          color: oragnecolor,
                          onPress: () {
                            userinput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          titel: '4',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '4';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '5',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '5';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '6',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '6';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '-',
                          color: oragnecolor,
                          onPress: () {
                            userinput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          titel: '1',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '1';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '2',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '2';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '3',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '3';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '+',
                          color: oragnecolor,
                          onPress: () {
                            userinput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button2(
                            titel: '0',
                            color: dimblackcolor,
                            onPress: () {
                              userinput += '0';
                              setState(() {});
                            }),
                        button(
                          titel: '.',
                          color: dimblackcolor,
                          onPress: () {
                            userinput += '.';
                            setState(() {});
                          },
                        ),
                        button(
                          titel: '=',
                          color: oragnecolor,
                          onPress: () {
                            equalpress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void equalpress() {
    String firstUserInput = userinput;
    firstUserInput = userinput.replaceAll('x', '*');
    String secondUserInput = firstUserInput;
    secondUserInput = firstUserInput.replaceAll('÷', '/');

    Parser p = Parser();
    Expression expression = p.parse(secondUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  void persenttage() {
    var ThirdUserInput = int.parse(userinput);
    var value = ThirdUserInput / 100;

    answer = value.toString();
  }
}
