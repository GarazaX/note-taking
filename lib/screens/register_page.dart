import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_taking/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                height: 36,
              ),
              buildTextField(Icons.email, "Email"),
              SizedBox(
                height: 36,
              ),
              buildTextField(Icons.lock, "Password"),
              SizedBox(
                height: 200,
              ),
              buildMaterialButton("Sign up", () {}),
            ],
          ),
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
      "Sign up",
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
}
