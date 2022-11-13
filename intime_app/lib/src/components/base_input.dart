import 'package:flutter/material.dart';

class BaseInput extends StatelessWidget {
  const BaseInput(
      {super.key, required this.placeHolder, required this.controller});
  final String placeHolder;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: placeHolder,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color(0xff94A3B8),
            ),
          ),
        ),
        controller: controller,
        onChanged: (value) => debugPrint(controller.text),
      ),
    );
  }
}
