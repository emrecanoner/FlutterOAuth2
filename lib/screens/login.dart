import 'dart:ffi';
import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_oauth2/main.dart';
import 'package:flutter_oauth2/screens/signup.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:flutter_oauth2/widgets/repPasswordTextField.dart';
import 'package:flutter_oauth2/widgets/repUsernameTextField.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: gWidth,
            height: gHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TopImage(),
                LoginText(),
                SizedBox(height: 20),
                UsernameTextField(),
                SizedBox(height: 20),
                PasswordTextField(),
                SizedBox(height: 30),
                LoginButton(),
                SizedBox(height: 15),
                OrText(),
                SizedBox(height: 15),
                RegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Register Buttton
class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 600),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(SignUpPage());
          },
          child: Row(
            children: [
              SizedBox(width: 40),
              SizedBox(
                height: 40,
                width: 40,
                child: Image.asset("assets/images/ester2.png"),
              ),
              SizedBox(width: 20),
              Text(
                "New To Ester? Register",
                style: TextStyle(
                    color: Color.fromARGB(255, 90, 90, 90),
                    fontFamily: 'Poppins-Regular',
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          style: ButtonStyle(
              overlayColor:
                  MaterialStateProperty.all(buttonColor.withOpacity(0.2)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 238, 238, 238),
              )),
        ),
      ),
    );
  }
}

//Or Text
class OrText extends StatelessWidget {
  const OrText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 900),
      child: Container(
        width: gWidth,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 0.5,
              color: iconColor,
            ),
            Text(
              '  OR  ',
              style: TextStyle(color: iconColor, fontSize: 20),
            ),
            Container(
              width: 130,
              height: 0.5,
              color: iconColor,
            )
          ],
        )),
      ),
    );
  }
}

//Login Button
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 1200),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(LoginPage());
          },
          child: Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontFamily: 'Poppins-Regular'),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(buttonColor)),
        ),
      ),
    );
  }
}

//Password TextField
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 1500),
      child: repPasswordTextField(),
    );
  }
}

//Username TextField
class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 1800),
      child: repUsernameTextField(),
    );
  }
}

//Login Text
class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 2100),
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 260),
        width: gWidth / 4,
        height: gHeight / 14,
        child: FittedBox(
          child: Text(
            'Login',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'Poppins-Regular',
            ),
          ),
        ),
      ),
    );
  }
}

//Top Image
class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 2400),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: gWidth,
        height: gHeight / 4,
        child: Image.asset("assets/images/ester.png"),
      ),
    );
  }
}
