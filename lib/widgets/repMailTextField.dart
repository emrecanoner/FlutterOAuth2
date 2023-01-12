import 'package:flutter/material.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:line_icons/line_icons.dart';

class repMailTextField extends StatelessWidget {
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
                readOnly: false,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                showCursor: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    suffixIcon: null,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: buttonColor, width: 2.5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    labelText: 'E-Mail',
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
