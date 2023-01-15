import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator Neumorphism',
      home: CalculatorNeuApp(),
    );
  }
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class CalculatorNeuApp extends StatefulWidget {
  @override
  _CalculatorNeuAppState createState() => _CalculatorNeuAppState();
}

class _CalculatorNeuAppState extends State<CalculatorNeuApp> {
  bool darkMode = false;
  bool status=false;
  String input ="0", res="0",output="";
  int number=0, result = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            darkMode ? darkMode = false : darkMode = true;
                          });
                        },
                        child: _switchMode()),
                    SizedBox(height: 70),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${input}',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: darkMode ? Colors.white : Colors.red),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '=',
                          style: TextStyle(
                              fontSize: 15,
                              color: darkMode ? Colors.green : Colors.grey),
                        ),
                        Text(
                          '${output}',
                          style: TextStyle(
                              fontSize: 25,
                              color: darkMode ? Colors.green : Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buttonOval(title: 'sin'),
                      _buttonOval(title: 'cos'),
                      _buttonOval(title: 'tan'),
                      _buttonOval(title: '%')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:GestureDetector(
                          onTap: (){
                            setState(() {
                              input='0';
                              number=0;
                              output='0';
                            });
                          },
                          child:_buttonRounded(
                              title: 'C',
                              textColor:
                              darkMode ? Colors.green : Colors.redAccent),
                        ),
                        ),

                     GestureDetector(
                       onTap: (){
                          setState(() {
                            input+='(';
                          });
                       },
                       child:  _buttonRounded(title: '('),
                     ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            input+=')';
                          });
                        },
                        child:  _buttonRounded(title: ')'),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                              input+='/';
                          });
                        },
                        child:_buttonRounded(
                            title: '/',
                            textColor: darkMode ? Colors.green : Colors.redAccent),
                      ),

                    ],
                  ),
                  //7-8-9
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            number=7;
                            if (input.length ==1 && input[0]=='0'){
                              input= '${number}';
                            }
                            else{
                              input+= '${number}';
                            }
                          });
                        },
                        child:  _buttonRounded(title: '7', num: 7),
                      ),
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           number=8;
                           if (input.length ==1 && input[0]=='0'){
                             input= '${number}';
                           }
                           else{
                             input+= '${number}';
                           }
                         });
                        },
                        child:  _buttonRounded(title: '8', num: 8),
                      ),
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           number=9;
                           if (input.length ==1 && input[0]=='0'){
                             input= '${number}';
                           }
                           else{
                             input+= '${number}';
                           }
                         });
                        },
                        child:  _buttonRounded(title: '9', num: 9),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            input+='*';
                          });
                        },
                        child:  _buttonRounded(
                            title: 'x',
                            textColor: darkMode ? Colors.green : Colors.redAccent)
                      ),

                    ],
                  ),
                  //4/5/6/-
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            number=4;
                            if (input.length ==1 && input[0]=='0'){
                              input= '${number}';
                            }
                            else{
                              input+= '${number}';
                            }
                          });
                        },
                        child:  _buttonRounded(title: '4', num: 4),
                      ),
                      GestureDetector(
                        onTap: (){
                        setState(() {
                          number=5;
                          if (input.length ==1 && input[0]=='0'){
                            input= '${number}';
                          }
                          else{
                            input+= '${number}';
                          }
                        });
                        },
                        child:  _buttonRounded(title: '5', num: 5),
                      ),
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           number=6;
                           if (input.length ==1 && input[0]=='0'){
                             input= '${number}';
                           }
                           else{
                             input+= '${number}';
                           }
                         });
                        },
                        child:  _buttonRounded(title: '6', num: 6),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            input+='-';
                          });
                        },
                        child:  _buttonRounded(
                            title: '-',
                            textColor: darkMode ? Colors.green : Colors.redAccent),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           number=1;
                           if (input.length ==1 && input[0]=='0'){
                             input= '${number}';
                           }
                           else{
                             input+= '${number}';
                           }
                         });
                        },
                        child:  _buttonRounded(title: '1', num: 1),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            number=2;
                            if (input.length ==1 && input[0]=='0'){
                              input= '${number}';
                            }
                            else{
                              input+= '${number}';
                            }
                          });
                        },
                        child:  _buttonRounded(title: '2', num: 2),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            number=3;
                             if (input.length ==1 && input[0]=='0'){
                               input= '${number}';
                             }
                             else{
                               input+= '${number}';
                             }
                          });
                        },
                        child:  _buttonRounded(title: '3', num: 3),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            input+='+';
                            output= '${result+number}';
                            number=0;
                          });
                        },
                        child:_buttonRounded(
                            title: '+',
                            textColor: darkMode ? Colors.green : Colors.redAccent)
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //0-,-delete
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           number=0;
                           if (input.length ==1 && input[0]=='0'){
                             input= '${number}';
                           }
                           else{
                             input+= '${number}';
                           }
                         });
                       },
                       child:  _buttonRounded(title: '0', num: 0),
                     ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                              input+= ',';
                          });
                        },
                        child:  _buttonRounded(title: ','),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            input= input.substring(0, input.length -1);
                            if(input == ""){
                              input = "0";
                            }
                          });
                        },
                        child:  _buttonRounded(
                            icon: Icons.backspace_outlined,
                            iconColor:
                            darkMode ? Colors.green : Colors.redAccent),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            output=input;
                            output=output.replaceAll('x', '*');
                            try{
                              Parser p = Parser();
                              Expression exp = p.parse(output);
                              ContextModel cm = ContextModel();
                              input= '${exp.evaluate(EvaluationType.REAL, cm)}';
                            }catch(e){
                                output="Error";
                            }
                          });
                        },
                        child: _buttonRounded(
                            title: '=',
                            textColor: darkMode ? Colors.green : Colors.redAccent),
                      )
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonRounded(
      {String? title,
       int num=0,
        double padding = 17,
        IconData? icon,
        Color? iconColor,
        Color? textColor}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: NeuContainer(
        darkMode: darkMode,
        borderRadius: BorderRadius.circular(40),
        padding: EdgeInsets.all(padding),
          child:Container(
            width: padding * 2,
            height: padding * 2,
            child: Center(
                child: title != null
                    ? Text(
                  '$title',
                  style: TextStyle(
                      color: textColor != null
                          ? textColor
                          : darkMode
                          ? Colors.white
                          : Colors.black,
                      fontSize: 30),
                )
                    : Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                )),
          ),
        )
    );
  }

  Widget _buttonOval({required String title, double padding = 17}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: NeuContainer(
        darkMode: darkMode,
        borderRadius: BorderRadius.circular(50),
        padding:
        EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
        child: Container(
          width: padding * 2,
          child: Center(
            child: Text(
              '$title',
              style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
  Widget _switchMode() {
    return NeuContainer(
      darkMode: darkMode,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 70,
        child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.wb_sunny,
            color: darkMode ? Colors.grey : Colors.redAccent,
          ),
          Icon(
            Icons.nightlight_round,
            color: darkMode ? Colors.green : Colors.grey,
          ),
        ]),
      ),
    );
  }
}

class NeuContainer extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  NeuContainer(
      {this.darkMode = false, required this.child, required this.borderRadius, required this.padding});

  @override
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: darkMode ? colorDark : colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed
                ? null
                : [
              BoxShadow(
                color:
                darkMode ? Colors.black54 : Colors.blueGrey.shade200,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                  color:
                  darkMode ? Colors.blueGrey.shade700 : Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0)
            ]),
        child: widget.child,
      ),
    );
  }
}