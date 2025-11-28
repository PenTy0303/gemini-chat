import 'package:flutter/material.dart';

class LeftMessageBalloon extends StatelessWidget {

  final String body;

  const LeftMessageBalloon({
    super.key,
    required this.body
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(radius: 15, backgroundColor: Colors.yellow,),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0), 
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child:ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*.7), child: Text(body, softWrap: true, style: TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w600),))
              ),
            ]
          ),
        )
    );
  }
}
