import 'package:flutter/material.dart';
import 'package:jobsheet4_praktikum2/Widget/convert.dart';

class Perhitungan extends StatelessWidget {
  const Perhitungan({
    Key? key,
    required this.selectedDropdown,
    required this.listSatuanSuhu,
    required this.onDropdownChanged,
  }) : super(key: key);

  final String selectedDropdown;
  final List<String> listSatuanSuhu;
  final Function onDropdownChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      value: selectedDropdown,
      items: listSatuanSuhu.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        onDropdownChanged(value);
      },
    );
  }
}
