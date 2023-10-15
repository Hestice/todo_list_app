import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDoItem extends StatefulWidget {
  final String text;
  bool isChecked;
  final VoidCallback? onChecked;
  final VoidCallback? onDelete;

  ToDoItem({
    Key? key,
    required this.text,
    required this.isChecked,
    this.onChecked,
    this.onDelete,
  }) : super(key: key);

  // Add a setter for isChecked
  set checked(bool value) {
    isChecked = value;
  }

  @override
  _ToDoItemState createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.isChecked,
          onChanged: (newValue) {
            if (widget.onChecked != null) {
              widget.onChecked!();
            }
          },
        ),
        Expanded(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              color: widget.isChecked ? Colors.grey : Colors.white,
              decoration: widget.isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
        ),
        if (widget.onDelete != null)
          IconButton(
            icon: Icon(Icons.delete, color: const Color.fromARGB(255, 104, 34, 29)), // Set the color property to Colors.red
            onPressed: () {
              widget.onDelete!();
            },
          ),
      ],
    );
  }
}
