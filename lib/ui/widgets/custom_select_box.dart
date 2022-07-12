import 'package:flutter/material.dart';
import 'package:lms/shared/theme.dart';

class CustomSelectBox extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomSelectBox({
    Key? key,
    required this.title,
    required this.hintText,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title == 'none' ? Container() : Text(title),
          SizedBox(
            height: 6,
          ),
          DropdownButton(
            items: [
              DropdownMenuItem(
                child: Text('asd'),
                value: 'asd',
              )
            ],
            onChanged: (String? newValue) {},
          ),
        ],
      ),
    );
  }
}
