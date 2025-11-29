import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final VoidCallback messageSendFunction;
  const TextInput({
    super.key,
    required this.textEditingController,
    required this.messageSendFunction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      height: 68,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(50.0),
                
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: TextField(
                  controller: textEditingController,
                  onEditingComplete: messageSendFunction,
                  decoration: InputDecoration(
                    border: InputBorder.none
                  ),
                ),
              )
            )
          ),
          IconButton(onPressed: messageSendFunction, icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
