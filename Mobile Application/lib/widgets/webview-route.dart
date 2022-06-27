import 'package:flutter/material.dart';
import 'package:my_app/palatte.dart';
import 'package:my_app/widgets/test-input.dart';
import 'package:my_app/widgets/widgets.dart';



class WebviewButton extends StatelessWidget {
  const WebviewButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 53, 174, 57),
            borderRadius: BorderRadius.circular(16)),
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, "/web");
            
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(buttonText, style: Kbodytext),
          ),
        ));
  }
}
