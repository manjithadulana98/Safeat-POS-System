import 'package:flutter/material.dart';
import 'package:my_app/palatte.dart';


TextEditingController passwordController = new TextEditingController();

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    @required this.icon,
    @required this.hint, 
    this.inputAction,
  }) : super(key: key);

  final IconData? icon;
  final String? hint;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          controller: passwordController,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(icon,
                    color: Colors.white, size: 30),
              ),
              hintStyle: Kbodytext),
          obscureText: true,
          style: Kbodytext,
          // keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
