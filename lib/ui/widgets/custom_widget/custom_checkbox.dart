import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({required Key key}) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      ///CHECKBOX
        onTap: () {
          setState(() {
            value = !value;
          });
        },
        child: Container(
         // decoration: const BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
          child: value
              ? Container(
              padding: const EdgeInsets.all(2.0),
             // decoration: const BoxDecoration(shape: BoxShape.rectangle, color: Colors.grey),
              child: const Icon(
                Icons.check,
                size: 20.0,
               // color: Colors.white,
              ))
              : Container(
            // decoration: const BoxDecoration(shape: BoxShape.rectangle, color: Colors.white,),
            padding: const EdgeInsets.all(0.0),
            child: const Icon(
              Icons.check_box_outline_blank,
              size: 25.0,
            //  color: Colors.white,
            ),
          ),
        ));
  }
}