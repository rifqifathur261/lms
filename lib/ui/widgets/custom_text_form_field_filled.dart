import 'package:flutter/material.dart';
import 'package:lms/shared/theme.dart';

class CustomTextFormFieldFilled extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormFieldFilled({
    Key? key,
    required this.title,
    required this.hintText,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title == 'none' ? Container() : Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obsecureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              hintText: hintText,
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              fillColor: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
