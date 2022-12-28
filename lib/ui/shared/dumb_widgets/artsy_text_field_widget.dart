import 'package:flutter/material.dart';

class ArtsyTextFieldWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final String? hintText;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool hasBorder;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final BorderRadius? borderRadius;
  final Color? tappedColor;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool autofocus;
  final bool? enabled;
  final double? focusBorderWidth;
  final Color? focusColor;
  final double? borderWidth;
  final Color? borderColor;
  final TextAlign? textAlignPosition;
  const ArtsyTextFieldWidget(
      {Key? key,
      this.focusColor,
      this.textStyle,
      this.borderColor,
      this.focusBorderWidth,
      this.textAlignPosition,
      this.borderWidth,
      this.textInputAction,
      this.focusNode,
      this.controller,
      this.onSubmitted,
      this.hintText,
      this.backgroundColor,
      this.validator,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.suffixIconColor,
      this.prefixIconColor,
      this.hasBorder = false,
      this.keyboardType,
      this.hintTextStyle,
      this.borderRadius,
      this.tappedColor,
      this.minLines,
      this.maxLines,
      this.maxLength,
      this.autofocus = false,
      this.enabled,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofocus: autofocus,
      controller: controller,
      validator: validator,
      focusNode: focusNode,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: obscureText,
      cursorColor: Theme.of(context).colorScheme.surface,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
      textAlign: textAlignPosition ?? TextAlign.left,
      decoration: InputDecoration(
        filled: true,
        contentPadding: padding,
        fillColor: backgroundColor ?? Theme.of(context).colorScheme.background,
        suffixIcon: suffixIcon,
        suffixIconColor:
            suffixIconColor ?? Theme.of(context).colorScheme.primary,
        prefixIcon: prefixIcon,
        prefixIconColor:
            prefixIconColor ?? Theme.of(context).colorScheme.primary,
        hintText: hintText,
        hintStyle: hintTextStyle ??
            Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
          borderSide: BorderSide(
            width: focusBorderWidth ?? 1,
            color: focusColor ?? Theme.of(context).colorScheme.secondary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
          borderSide: BorderSide(
            width: borderWidth ?? 2,
            color: borderColor ?? Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
