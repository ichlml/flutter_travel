import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.title,
    required this.placeholder,
    required this.controller,
    this.secureText = false,
    this.isEmail = false,
  });

  final String title;
  final String placeholder;
  final TextEditingController controller;
  final bool secureText;
  final bool isEmail;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: blackTextStyle,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: widget.controller,
            obscureText: widget.secureText ? _obscureText : false,
            keyboardType: widget.isEmail
                ? TextInputType.emailAddress
                : TextInputType.text,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              suffixIcon: widget.secureText
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
