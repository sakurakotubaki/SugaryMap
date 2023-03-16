import 'package:flutter/material.dart';

class CustomInputNumber extends StatelessWidget {
  const CustomInputNumber({
    Key? key, required this.labelText, required this.phoneController,
  }) : super(key: key);

  final String labelText;
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextFormField(
        keyboardType: TextInputType.number,
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