import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final VoidCallback? onChanged;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final EdgeInsetsGeometry? contentPadding;

  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
    this.onChanged,
    this.prefixIcon,
    this.sufixIcon,
    this.iconColor,
    this.contentPadding = const EdgeInsets.all(8),
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(
        context,
        width: 1,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(8.0),
    );

    final focusedBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(
        context,
        width: 1,
        color: const Color.fromARGB(255, 77, 226, 246),
      ),
      borderRadius: BorderRadius.circular(8.0),
    );

    return TextField(
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      controller: textEditingController,
      onChanged: (value) {
        onChanged?.call();
      },
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 8.0),
          child: Icon(
            prefixIcon,
            color: iconColor,
          ),
        ),
        hintStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.white54,
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            icon: Icon(
              sufixIcon,
              color: iconColor,
            ),
            onPressed: () => onPressed?.call(),
          ),
        ),
        hintText: hintText,
        border: inputBorder,
        focusedBorder: focusedBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: contentPadding,
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
