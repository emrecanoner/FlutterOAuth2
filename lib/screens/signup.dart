import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_oauth2/screens/login.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:flutter_oauth2/widgets/repMailTextField.dart';
import 'package:flutter_oauth2/widgets/repPasswordConfirmTextField.dart';
import 'package:flutter_oauth2/widgets/repPhoneTextField.dart';
import 'package:flutter_oauth2/widgets/repUserRoleTextField.dart';
import 'package:get/get.dart';

import '../widgets/repUsernameTextField.dart';
import '../widgets/repFirstNameTextField.dart';
import '../widgets/repLastNameTextField.dart';
import '../widgets/repUsernameTextField.dart';
import '../widgets/repBirthdayTextField.dart';
import '../widgets/repPasswordTextField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            width: gWidth,
            child: Column(
              children: [
                TopImage(),
                SignUpText(),
                SizedBox(height: 20),
                UsernameTextField(),
                SizedBox(height: 20),
                FirstNameTextField(),
                SizedBox(height: 20),
                LastNameTextField(),
                SizedBox(height: 20),
                MailTextField(),
                SizedBox(height: 20),
                PasswordTextField(),
                SizedBox(height: 20),
                PasswordConfirmTextField(),
                SizedBox(height: 20),
                PhoneNumberTextField(),
                SizedBox(height: 20),
                BirthdayTextField(),
                SizedBox(height: 20),
                UserRoleTextField(),
                SizedBox(height: 30),
                ContinueButton(),
                BackHomeTextButton(),
              ],
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
      delay: Duration(milliseconds: 3600),
      child: Container(
        margin: EdgeInsets.only(top: 25),
        width: gWidth,
        height: gHeight / 5,
        child: Image.asset("assets/images/ester3.png"),
      ),
    );
  }
}

//SignUp Text
class SignUpText extends StatelessWidget {
  const SignUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: 3900),
      child: Container(
        margin: EdgeInsets.only(right: 250),
        width: gWidth / 4,
        height: gHeight / 14,
        child: FittedBox(
          child: Text(
            'Sign Up',
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

//Username TextField
class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 3300),
      child: repUsernameTextField(),
    );
  }
}

//FisrtName TextField
class FirstNameTextField extends StatelessWidget {
  const FirstNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 3000),
      child: repFirstNameTextField(),
    );
  }
}

//LastName TextField
class LastNameTextField extends StatelessWidget {
  const LastNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 2700),
      child: repLastNameTextField(),
    );
  }
}

//E-Mail TextField
class MailTextField extends StatelessWidget {
  const MailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 2400),
      child: repMailTextField(),
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
      delay: Duration(milliseconds: 2100),
      child: repPasswordTextField(),
    );
  }
}

//PasswordConfirm TextField
class PasswordConfirmTextField extends StatelessWidget {
  const PasswordConfirmTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 1800),
      child: repPasswordConfirmTextField(),
    );
  }
}

//Phone Number TextField
class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 1500),
      child: repPhoneNumberTextField(),
    );
  }
}

//Birthday TextField
class BirthdayTextField extends StatelessWidget {
  const BirthdayTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 1200),
      child: repBirthdayTextField(),
    );
  }
}

//User Role TextField
class UserRoleTextField extends StatelessWidget {
  const UserRoleTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 900),
      child: repUserRoleTextField(),
    );
  }
}

//Continue Button
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 600),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(SignUpPage());
          },
          child: Text(
            'Continue',
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

//Back Home Text Button
class BackHomeTextButton extends StatelessWidget {
  const BackHomeTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 600),
      child: GestureDetector(
        onTap: () {
          Get.offAll(LoginPage());
        },
        child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 17),
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
                    'Back Home',
                    style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Poppins-Regular',
                        fontSize: 14),
                  ),
                  Container(
                    width: 130,
                    height: 0.5,
                    color: iconColor,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
