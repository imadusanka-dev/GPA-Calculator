import 'package:flutter/material.dart';

void main() => runApp(GpaCalculator());

class GpaCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPA Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  // Create text controllers for each textf ields to retrieve the current values
  final aController = TextEditingController();
  final amController = TextEditingController();
  final bpController = TextEditingController();
  final bController = TextEditingController();
  final bmController= TextEditingController();
  final cpController = TextEditingController();
  final cController = TextEditingController();
  final cmController = TextEditingController();
  final dController = TextEditingController();
  final dpController = TextEditingController();

  @override
  void dispose(){
    // Clean up the controller when the widget is disposed.
    aController.dispose();
    amController.dispose();
    bpController.dispose();
    bController.dispose();
    bmController.dispose();
    cpController.dispose();
    cController.dispose();
    cmController.dispose();
    dpController.dispose();
    dController.dispose();
    super.dispose();
  }

  String getResult(){

    var aCredits = 0;
    var amCredits = 0;
    var bpCredits = 0;
    var bCredits = 0;
    var bmCredits = 0;
    var cpCredits = 0;
    var cCredits = 0;
    var cmCredits = 0;
    var dpCredits = 0;
    var dCredits = 0;

    // Convert String to int
    if(aController.text.isNotEmpty){
      aCredits = int.parse(aController.text);
    }

    if(amController.text.isNotEmpty){
      amCredits = int.parse(amController.text);
    }

    if(bpController.text.isNotEmpty){
      bpCredits = int.parse(bpController.text);
    }

    if(bController.text.isNotEmpty){
      bCredits = int.parse(bController.text);
    }

    if(bmController.text.isNotEmpty){
      bmCredits = int.parse(bmController.text);
    }

    if(cpController.text.isNotEmpty){
      cpCredits = int.parse(cpController.text);
    }

    if(cController.text.isNotEmpty){
      cCredits = int.parse(cController.text);
    }

    if(cmController.text.isNotEmpty){
      cmCredits = int.parse(cmController.text);
    }

    if(dpController.text.isNotEmpty){
      dpCredits = int.parse(dpController.text);
    }

    if(dController.text.isNotEmpty){
      dCredits = int.parse(dController.text);
    }

    var totalCredits = aCredits + amCredits + bpCredits + bCredits + bmCredits + cpCredits +
        cCredits + cmCredits + dpCredits + dCredits;

    var a_gradepoints = aCredits * 4;
    var am_gradepoints = amCredits * 3.7;
    var bp_gradepoints = bpCredits * 3.3;
    var b_gradepoints = bCredits * 3;
    var bm_gradepoints = bmCredits * 2.7;
    var cp_gradepoints = cpCredits * 2.3;
    var c_gradepoints = cCredits * 2;
    var cm_gradepoints = cmCredits * 1.7;
    var dp_gradepoints = dpCredits * 1.3;
    var d_gradepoints = dCredits * 1;

    var totalGradepoints = a_gradepoints + am_gradepoints + bp_gradepoints + b_gradepoints +
        bm_gradepoints + cp_gradepoints + c_gradepoints + cm_gradepoints + dp_gradepoints +
        d_gradepoints;

    var gpa = (totalGradepoints / totalCredits);

    var dClass = ''; //Degree Class

    if(gpa >= 3.70){
      dClass = 'Congratulations!! First Class';
    }else if(gpa >= 3.30){
      dClass = 'Congratulations!! Second Class Upper';
    }else if(gpa >= 3.00){
      dClass = 'Congratulations!! Second Class Lower';
    }else if(gpa >= 2.00){
      dClass = 'Congratulations!! General';
    }else{
      dClass = 'Never give up';
    }

    if(gpa.isNaN){
      return 'Enter Credits';
    }else{
      return gpa.toStringAsFixed(2) + '\n' + dClass;
    }
  } // End of the getResult

  void clearTextInputs(){

    aController.clear();
    amController.clear();
    bpController.clear();
    bController.clear();
    bmController.clear();
    cpController.clear();
    cController.clear();
    cmController.clear();
    dpController.clear();
    dController.clear();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GPA Calculator'),
          leading: Icon(Icons.book, color: Colors.yellowAccent,),
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'A+ and A Credits',
                ),
                keyboardType: TextInputType.number,
                controller: aController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'A- Credits',
                ),
                keyboardType: TextInputType.number,
                controller: amController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'B+ Credits',
                ),
                keyboardType: TextInputType.number,
                controller: bpController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'B Credits',
                ),
                keyboardType: TextInputType.number,
                controller: bController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'B- Credits',
                ),
                keyboardType: TextInputType.number,
                controller: bmController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'C+ Credits',
                ),
                keyboardType: TextInputType.number,
                controller: cpController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'C Credits',
                ),
                keyboardType: TextInputType.number,
                controller: cController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'C- Credits',
                ),
                keyboardType: TextInputType.number,
                controller: cmController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'D+ Credits',
                ),
                keyboardType: TextInputType.number,
                controller: dpController,
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'D Credits',
                ),
                keyboardType: TextInputType.number,
                controller: dController,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60, 20, 60, 10),
              child: RaisedButton.icon(
                color: Colors.amber,
                onPressed: (){
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the that user has entered by using the
                        // TextEditingController.
                        content: Text(getResult()),
                      );
                    },
                  );
                },
                icon: Icon(Icons.arrow_forward),
                label: Text('Calculate'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 20),
              child: RaisedButton.icon(
                  color: Colors.red,
                  onPressed: (){
                    clearTextInputs();
                  }, 
                  icon: Icon(Icons.delete),
                  label: Text('Clear All')),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('Developed By Isuru Madusanka'),
                  Text('Email : isurumadusanka398@gmail.com')
                ],  
              ),
            ),
          ],
        )
    );
  }
}