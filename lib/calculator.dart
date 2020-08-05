import 'package:flutter/material.dart';
import './CalculatorFormOperations.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(fontSize: 25.0),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
         body: Container(
            child: Center(
                  child: SingleChildScrollView(
                    reverse: true,
                    physics: BouncingScrollPhysics(),
                    child: CalculatorFormOperations(),
                  ),
          ),
      ),
      )
    );
  }
}
