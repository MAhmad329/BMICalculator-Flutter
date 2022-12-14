import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer(
      {super.key, required this.colour, required this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
