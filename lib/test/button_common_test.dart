import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/common/button_common.dart'; // Replace with the actual path to your ButtonCommon file

void main() {
  testWidgets('ButtonCommon Widget Test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ButtonCommon(
            onPressFunctionName: () {
              
            }, // Provide your actual function here
            buttonText: 'Add',
            backgroundColor: Colors.blue, // Provide your actual color values here
            textColor: Colors.white,
          ),
        ),
      ),
    );

    // Verify that the widget has the correct text and styling.
    expect(find.text('Add'), findsOneWidget);
    expect(
      find.descendant(
        of: find.byType(ElevatedButton),
        matching: find.byType(Text),
      ),
      findsOneWidget,
    );
  });
}
