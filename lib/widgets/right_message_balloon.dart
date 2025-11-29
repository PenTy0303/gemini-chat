import 'package:flutter/material.dart';

class RightMessageBalloon extends StatelessWidget {

  final String body;

  const RightMessageBalloon({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Align(
        alignment: AlignmentGeometry.centerRight,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.7), child: Text(body, style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),)), 
        ),
      ),
    );
  }
}