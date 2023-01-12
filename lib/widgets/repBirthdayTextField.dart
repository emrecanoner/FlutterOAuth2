import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_oauth2/utils/constant.dart';
import 'package:intl/intl.dart';

class repBirthdayTextField extends StatefulWidget {
  const repBirthdayTextField({Key? key}) : super(key: key);

  @override
  State<repBirthdayTextField> createState() => _repBirthdayTextFieldState();
}

class _repBirthdayTextFieldState extends State<repBirthdayTextField> {
  TextEditingController date = TextEditingController();
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
                controller: date,
                onTap: () async {
                  DateTime? dtPicker = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                            primary: text1Color,
                            onPrimary: Colors.white,
                            onSurface: Colors.black,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              primary: text1Color,
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (dtPicker != null) {
                    setState(() {
                      date.text = DateFormat('yyyy-MM-dd').format(dtPicker);
                    });
                  }
                },
                readOnly: true,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                showCursor: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today_rounded),
                    suffixIcon: null,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: buttonColor, width: 2.5),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    labelText: 'Birthday',
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
