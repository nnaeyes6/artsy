import 'package:flutter/material.dart';

class ArtsySpacingDropDownWidget extends StatelessWidget {
  const ArtsySpacingDropDownWidget({
    Key? key,
    this.labelText,
    this.helperText,
    required this.onchanged,
    required this.items,
    required this.hint,
  }) : super(key: key);

  final String? labelText;
  final String? helperText;
  final Function(dynamic) onchanged;
  final List<DropdownMenuItem<dynamic>> items;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        // value: 'Job title',
        // alignment: AlignmentDirectional.topStart,
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 30,
        iconEnabledColor: Colors.black,
        hint: Container(
            margin: const EdgeInsets.only(left: 24.0),
            child: Text(hint)),
        decoration: InputDecoration(
          helperText: helperText,
          labelText: labelText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        items: items,
        onChanged: onchanged);
  }
}
