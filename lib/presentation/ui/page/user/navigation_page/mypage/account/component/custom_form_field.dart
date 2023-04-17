import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.labelText,
    required this.nameController,
  }) : super(key: key);

  final String labelText;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextFormField(
        controller: nameController,
        validator: (value) {
          if (value!.isEmpty) {
            return '名前を入力してください';
          }
        },
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
