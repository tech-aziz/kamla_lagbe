import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  String? Function(String?)? validator;
  final Function(String)? onChanged;
  TextEditingController? controller;
  bool isFocused;


  CustomTextField({
    super.key,
    required this.hintText,
    required this.isFocused,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          cursorRadius: Radius.circular(100),
          controller: controller,
          maxLength: 11,
          onChanged: onChanged,
          validator: validator,
          keyboardType: keyboardType,
          style: const TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            counterText: '',
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            hintText: hintText,
            hintStyle: TextStyle(
             color: isFocused ? Colors.green : Colors.grey,
            ),
            labelStyle: TextStyle(),
            focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(color: isFocused ? Colors.green : Colors.grey,width: 1.6)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: isFocused ? Colors.green : Colors.grey,width: 1.6)
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
