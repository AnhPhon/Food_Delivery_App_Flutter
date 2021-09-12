import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/contants.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    required this.title,
    required this.active,
  }) : super(key: key);

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
          color: active ? kPrimaryColor : kTextColor,
        ),
      ),
    );
  }
}
