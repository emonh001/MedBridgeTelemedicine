import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  LoginTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.iconData,
    required this.textEditingController,
    this.input = TextInputType.text,
    this.isPassword = false,
    this.validator
  });

  final String label, hint;
  final IconData iconData;
  final TextEditingController textEditingController;
  final TextInputType input;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label),
          const SizedBox(height: 5),
          TextFormField(
            controller: widget.textEditingController,
            keyboardType: widget.input,
            validator: widget.validator,
            textInputAction: TextInputAction.next,
            obscureText: widget.isPassword ? isObscure : false,
            decoration: InputDecoration(

              hintText: widget.hint,
              prefixIcon: Icon(widget.iconData),

              suffixIcon: widget.isPassword
                  ? IconButton(
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              )
                  : null,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),

              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),


            ),
          )
        ],
      ),
    );
  }
}
