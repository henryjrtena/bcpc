import 'package:brgy_abella/utilities/constant.dart';
import 'package:flutter/material.dart';

class SexDropDown extends StatefulWidget {
  const SexDropDown({
    required this.initialValue,
    required this.onChanged,
    this.label,
    super.key,
  });

  final int initialValue;
  final String? label;
  final ValueChanged<int> onChanged;

  @override
  State<SexDropDown> createState() => _SexDropDownState();
}

class _SexDropDownState extends State<SexDropDown> {
  late int dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(3.0)),
      ),
      child: DropdownButton<int>(
        value: dropdownValue,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        focusColor: Colors.transparent,
        onChanged: (int? value) {
          if (value != null) {
            setState(() {
              dropdownValue = value;
            });
            widget.onChanged(value);
          }
        },
        items: [
          DropdownMenuItem<int>(
            value: -1,
            child: Text(
              widget.label ?? emptyString,
              style: const TextStyle(color: black, fontWeight: FontWeight.bold),
            ),
          ),
          const DropdownMenuItem<int>(
            value: 0,
            child: Text(
              'Female',
              style: TextStyle(color: black, fontWeight: FontWeight.bold),
            ),
          ),
          const DropdownMenuItem<int>(
            value: 1,
            child: Text(
              'Male',
              style: TextStyle(color: black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
