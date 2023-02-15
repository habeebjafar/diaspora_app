import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final buttonColor;

  final child;
  final Function()? onTap;

  const CustomButton({Key? key, this.buttonColor, this.child, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      child: Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: child,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
