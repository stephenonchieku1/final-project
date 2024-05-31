import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hinttext;
  final bool obsecuretext;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    required this.hinttext,
    required this.obsecuretext,
    this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obsecuretext,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(12)),
          hintText: widget.hinttext,
          hintStyle: const TextStyle(
              fontSize: 15,
              fontFamily: 'Urbanist-Medium',
              color: Color(0xFF8391A1))),
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  final String message;
  final FutureOr<void> Function() function;
  final Color? color;
  const CustomElevatedButton({
    super.key,
    required this.message,
    required this.function,
    this.color = Colors.white,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
       child: loading
       ? const CupertinoActivityIndicator()
       :FittedBox(
        child: Text( widget.message,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: 'Urbanist-Medium',
          color: Color(0xFF8391A1) 
        ))
       ));
  }
}
