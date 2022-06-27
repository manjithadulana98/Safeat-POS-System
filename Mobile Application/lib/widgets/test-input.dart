import 'package:flutter/material.dart';
import 'package:my_app/palatte.dart';

TextEditingController emailController = new TextEditingController();

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
  
  }) : super(key: key);

  final IconData? icon;
  final String? hint;
  final TextInputType? inputType;
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
          controller: emailController,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(icon, color: Colors.white, size: 30),
              ),
              hintStyle: Kbodytext),
          style: Kbodytext,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
