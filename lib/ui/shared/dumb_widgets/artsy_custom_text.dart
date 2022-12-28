// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ArtsyText extends StatelessWidget {
  const ArtsyText({
    Key? key,
    required this.text,
    this.textStyle,
    this.textAlign,
  }) : super(key: key);
  final String text;

  final TextStyle? textStyle;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: textStyle,
    );
  }
}
