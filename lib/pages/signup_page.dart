import 'package:bynry_assignment/widgets/CustomTextField';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 238, 255),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.deepPurpleAccent,
              ),
              child: Container(
                padding: const EdgeInsets.only(
                  top: 90,
                  left: 20,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create your account",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            child: Container(
              height: size.height * 0.47,
              width: size.width - 40,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    text: "Enter the Email ID",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    text: "Password",
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible1 = !_isVisible1;
                        });
                      },
                      icon: _isVisible1
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    text: "Confirm Password",
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible2 = !_isVisible2;
                        });
                      },
                      icon: _isVisible2
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // const Align(
                  //   alignment: Alignment.centerRight,
                  //   child: Text(
                  //     "Forgot Password?",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.deepPurple,
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    color: Colors.deepOrange,
                    child: const Text(
                      "SIGNUP",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.85,
            left: size.width * 0.25,
            right: size.width * 0.25,
            child: RichText(
              text: TextSpan(
                text: "Already have an Account ? ",
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigator.pushNamed(context, '/signup_page');
                        Navigator.pop(context);
                      },
                    text: " Login",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
