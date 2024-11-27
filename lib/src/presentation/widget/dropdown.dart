import 'package:flutter/material.dart';

class DropdownWithoutAPI extends StatefulWidget {
  const DropdownWithoutAPI({super.key});

  @override
  DropdownWithoutAPIState createState() => DropdownWithoutAPIState();
}

class DropdownWithoutAPIState extends State<DropdownWithoutAPI> {
  // Predefined list of dropdown items
  final List<String> dropItems = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry'
  ];
  String? dropdownvalue; // Selected value

  // Selected item variable
  String? selectedItem; // Nullable to start with no selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Without API'),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: selectedItem, // Displays the currently selected item
          items: dropItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue; // Update the selected item
            });
          },
          hint: Text('Select a fruit'), // Placeholder text
        ),
      ),
    );
  }
}
