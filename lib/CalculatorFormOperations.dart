import 'package:flutter/material.dart';

class CalculatorFormOperations extends StatefulWidget {
  @override
  _CalculatorFormOperationsState createState() =>
      _CalculatorFormOperationsState();
}

class _CalculatorFormOperationsState extends State<CalculatorFormOperations> {
  bool isvalid = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  final TextEditingController num1controller = new TextEditingController();
  final TextEditingController num2controller = new TextEditingController();
  String result = "0";

  void _subtract() {
    String text1 = num1controller.text;
    String text2 = num2controller.text;

    if (int.parse(text1) > int.parse(text2)) {
      int sub = int.parse(num1controller.text) - int.parse(num2controller.text);
      result = sub.toString();
    } else
      result = "Invalid Number 1";
  }

  void _division() {
    String text1 = num1controller.text;
    String text2 = num2controller.text;

    if (int.parse(text1) != 0 && int.parse(text2) != 0) {
      double div = double.parse(num1controller.text) / double.parse(num2controller.text);
      result = div.toString();
    } else
      result = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Column(
        children: <Widget>[
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Number 1",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(247, 64, 106, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  controller: num1controller,
                  validator: (val1) {
                    if (val1.length == 0) {
                      return "Number 1 cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Number 2",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(247, 64, 106, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  controller: num2controller,
                  validator: (val2) {
                    if (val2.length == 0) {
                      return "Number 2 cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 250.0,
                      child: RaisedButton(
                        color: const Color.fromRGBO(247, 64, 106, 1.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        onPressed: () {
                          formKey.currentState.validate();
                          setState(() {
                            int sum = int.parse(num1controller.text) +
                                int.parse(num2controller.text);
                            result = sum.toString();
                          });
                        },
                        child: Text(
                          'Addition',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 250.0,
                      child: RaisedButton(
                        color: const Color.fromRGBO(247, 64, 106, 1.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        onPressed: () {
                          formKey.currentState.validate();
                          setState(() {
                            _subtract();
                          });
                        },
                        child: Text(
                          'Subtraction',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 250.0,
                      child: RaisedButton(
                        color: const Color.fromRGBO(247, 64, 106, 1.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        onPressed: () {
                          formKey.currentState.validate();
                          setState(() {
                            int sum = int.parse(num1controller.text) *
                                int.parse(num2controller.text);
                            result = sum.toString();
                          });
                        },
                        child: Text(
                          'Multiplication',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 250.0,
                      child: RaisedButton(
                        color: const Color.fromRGBO(247, 64, 106, 1.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        onPressed: () {
                          formKey.currentState.validate();
                          setState(() {
                            _division();
                          });
                        },
                        child: Text(
                          'Division',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Result:",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            result,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
