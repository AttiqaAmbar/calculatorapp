
//*****CUSTOM BUTTON CLASS**************
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //Data Members of CustomButton Class

  final String buttonName;
  final Color? buttonColor;
  final TextStyle? txtStyle;
  final VoidCallback
  callBackfun; //VoidCallback don't take arguments nor return values

  //Parameterized Constructor
  const CustomButton({
    super.key,
    required this.buttonName,
    this.buttonColor,
    required this.callBackfun,
    this.txtStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBackfun();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shadowColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )),
      child: Text(
        buttonName,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
