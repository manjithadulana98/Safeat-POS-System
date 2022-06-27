import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/palatte.dart';
// import 'package:flutter_loginpage/palatte.dart';
import '../widgets/widgets.dart';

// import 'dart:ui';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        BackgorundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      child: const Center(
                        child: Text(
                          'Safeat',
                          style: Kheading,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              TextInput(
                                icon: FontAwesomeIcons.solidEnvelope,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),
                              PasswordInput(
                                icon: FontAwesomeIcons.lock,
                                hint: 'Password',
                                inputAction: TextInputAction.done,
                              ),
                              Text(
                                'Forgot Password?',
                                style: Kbodytext,
                              ),
                            ],
                          ),
                          Column(
                            children:  [
                              const SizedBox(height: 100),
                              const RoundedButton(
                                buttonText: "Login",
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              Container(
                                decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white, width: 1))),
                                child: const Text('Create New Account',style: Kbodytext,),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}


