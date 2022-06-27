import 'package:flutter/material.dart';
import 'package:my_app/palatte.dart';
import 'package:my_app/widgets/test-input.dart';
import 'package:my_app/widgets/widgets.dart';

bool data() {
  if ((emailController.text == 'manjitha456@gmail.com') &
      (passwordController.text == 'Manjitha@123')) {
    return true;
  } else {
    return false;
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
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
            if (data()) {
               Navigator.pushNamed(context, "/qr");
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(buttonText, style: Kbodytext),
          ),
        ));
  }
}
