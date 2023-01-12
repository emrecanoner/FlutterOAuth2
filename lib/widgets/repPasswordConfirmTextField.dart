import 'package:flutter/material.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class repPasswordConfirmTextField extends StatefulWidget {
  const repPasswordConfirmTextField({Key? key}) : super(key: key);

  @override
  State<repPasswordConfirmTextField> createState() => _RepPasswordFieldState();
}

class _RepPasswordFieldState extends State<repPasswordConfirmTextField> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: gHeight / 15,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 50,
              width: gWidth / 1.2,
              child: TextField(
                obscureText: isHiddenPassword,
                readOnly: false,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                showCursor: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(LineIcons.alternateArrowCircleUpAlt),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isHiddenPassword = !isHiddenPassword;
                          });
                        },
                        child: Icon(isHiddenPassword
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: buttonColor, width: 2.5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    labelText: 'Password Confirm',
                    labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
