import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdownWidgets extends StatelessWidget {
  //features of a statelesswdget
  // class name
  //variables
  //constructor
  //build function
  // every class has variables and constructors below are the defined variables namely values and width;
  late double width;
  late List<String> values;
  @override
// ignore: use_key_in_widget_constructors
  CustomDropdownWidgets({required this.values, required this.width});
//build function
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
      ),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
