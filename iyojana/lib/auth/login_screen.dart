import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "loginScreen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            //TODO : Add route
                            onPressed: () {},
                          ),
                        ),
                        Text("Welcome Back",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 36))),
                        Text("Let's sign you in",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.grey))),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                  children: [
                  Image.asset('./assets/login.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Enter Your Email Address",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 17)),
                  ),
                  TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(179, 208, 208, 208),
                    hintText: "Email"
                  )),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(179, 208, 208, 208),
                    hintText: "Password"
                  ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child:
                    //TODO: Add login implementation
                        ElevatedButton(onPressed: () {}, child: Text("Login")),
                  )
                  ],
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom : 10.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(color: Colors.green),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //TODO : Add Sign up screen route
                                print('Sign Up');
                              }),
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}