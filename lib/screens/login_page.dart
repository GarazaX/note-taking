import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_taking/constants.dart';
import 'package:note_taking/screens/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Stack(
            children: [
              buildBackGorundImage(),
              buildBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36.0,
            vertical: 12,
          ),
          child: Column(
            children: [
              buildTopText(),
              SizedBox(
                height: 36,
              ),
              buildTextField(Icons.person, "User Name"),
              SizedBox(
                height: 20,
              ),
              buildTextField(Icons.lock, "Password"),
              SizedBox(
                height: 54,
              ),
              buildMaterialButton("Login", () {}),
              buildForgotButton("Forgot your password?", () {}),
              Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  buildOrLoginLine(),
                  buildGoogleButton(),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              buildSignUpButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
          },
          child: Text(
            "Sign up",
            style: TextStyle(color: Color(0xff1B43AD)),
          ),
        )
      ],
    );
  }

  Widget buildGoogleButton() {
    return Container(
      width: 140,
      padding: EdgeInsets.only(top: 6),
      child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          color: Colors.black,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.google,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Google",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }

  Widget buildOrLoginLine() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
      ),
      child: Row(children: <Widget>[
        Expanded(child: buildDivider()),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: Text(
            "or login with",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
        ),
        Expanded(child: buildDivider()),
      ]),
    );
  }

  Widget buildForgotButton(String text, Function click) {
    return TextButton(
      onPressed: () => click(),
      child: Text(
        "$text",
        style: TextStyle(
          color: softWhite.withOpacity(0.8),
          fontSize: 18,
        ),
      ),
    );
  }

  Widget buildMaterialButton(String text, Function click) {
    return MaterialButton(
      textColor: Colors.white,
      color: Color(0xff1B43AD),
      child: Text(
        "$text",
        style: TextStyle(
          fontFamily: "SourceSerif",
          fontSize: 26,
          fontWeight: FontWeight.normal,
        ),
      ),
      onPressed: () => click(),
      minWidth: double.infinity,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    );
  }

  Widget buildTextField(IconData icon, String hintText,
      [bool isObscure = false]) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 22),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        filled: true,
        hintStyle: TextStyle(color: Color(0xffAFAFFF)),
        hintText: hintText,
        fillColor: softWhite,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 12),
          child: Icon(icon),
        ),
      ),
    );
  }

  Widget buildTopText() {
    return Text(
      "Login",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
    );
  }

  Widget buildBackGorundImage() {
    return Positioned(
      child: Image.asset(
        "assets/images/bg.png",
      ),
      top: -20,
      left: 0,
    );
  }

  Widget buildDivider() {
    return Divider(
      color: Color(0xff707070).withOpacity(0.8),
      thickness: 0.8,
    );
  }
}
