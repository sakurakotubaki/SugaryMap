import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key, required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey)),
            labelText: labelText),
      ),
    );
  }
}