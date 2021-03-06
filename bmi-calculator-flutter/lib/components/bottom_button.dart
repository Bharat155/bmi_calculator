import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.label, @required this.onTap});
  final Function onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 27.0),
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 55.0,
      ),
    );
  }
}