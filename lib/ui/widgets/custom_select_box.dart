import 'package:flutter/material.dart';
import 'package:lms/shared/theme.dart';

class CustomSelectBox extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final List<String> items;

  const CustomSelectBox({
    Key? key,
    required this.title,
    required this.hintText,
    required this.items,
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
          DropdownButtonFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
            items: items
                .map((title) =>
                    DropdownMenuItem(value: title, child: Text(title)))
                .toList(),
            onChanged: (String? newValue) {},
          ),
        ],
      ),
    );
  }
}
