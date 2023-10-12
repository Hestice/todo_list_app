import 'package:flutter/material.dart';

class BuildTextFieldCommon extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool enabled;

  const BuildTextFieldCommon({
    super.key,
    required this.controller,
    required this.hintText,
    this.enabled = true, 
  });

  @override
  _BuildTextFieldCommonState createState() => _BuildTextFieldCommonState();
}

class _BuildTextFieldCommonState extends State<BuildTextFieldCommon> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: widget.controller,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey.shade500),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          focusNode: _focusNode,
          enabled: widget.enabled,
        ),
      ],
    );
  }
}
