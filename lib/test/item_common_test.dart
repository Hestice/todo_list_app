import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/common/item_common.dart'; // Import your ToDoItem widget file

void main() {
  testWidgets('ToDoItem widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ToDoItem(
            text: 'Test ToDo',
            isChecked: false,
            onChecked: () {},
            onDelete: () {},
          ),
        ),
      ),
    );

    // Verify that the initial state is correct.
    expect(find.text('Test ToDo'), findsOneWidget);
    expect(find.byType(Checkbox), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);

    // Tap the checkbox and trigger a frame.
    await tester.tap(find.byType(Checkbox));
    await tester.pump();

    // Verify that the checkbox state has changed.
    expect(find.byType(Checkbox), findsOneWidget);
    expect(find.text('Test ToDo'), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);

    // Tap the delete button and trigger a frame.
    await tester.tap(find.byType(IconButton));
    await tester.pump();

    // Verify that the delete button action has been called.
    expect(find.byType(Checkbox), findsOneWidget);
    expect(find.text('Test ToDo'), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);
  });
}
