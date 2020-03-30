import 'package:flutter/material.dart';


class StepperScreen extends StatefulWidget {
  @override
  _StepperScreenState createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  
  int CurStep=0;
  List<Step> ls=[
    new Step(title:Text("Step1"), content: Text("This is content of step1"),isActive: true),
    new Step(title:Text("Step2"), content: Text("This is content of step2"),isActive: true),
    new Step(title:Text("Step3"), content: Text("This is content of step3"),isActive: true),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stepper'),
        ),
        body:Container(
          child: Stepper(
            currentStep: this.CurStep,
              steps:ls,
              type: StepperType.vertical,
          ),
        )

    );
  }

}