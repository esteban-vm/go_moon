import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  final List<String> values;
  final double width;

  const CustomDropDownButton(
      {super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(53, 53, 53, 1.0),
          borderRadius: BorderRadius.circular(10.0)),
      child: DropdownButton(
        items: values
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        value: values.first,
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        onChanged: (_) {},
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
