import 'package:flutter/material.dart';
import 'package:todo_app/common/button_common.dart';
import 'package:todo_app/helpers/add_item.dart';
import '../common/text_field_common.dart';
import '../common/item_common.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List<ToDoItem> todoItems = []; 
   final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 26, 39, 51),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child:  Column(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0,),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child:  BuildTextFieldCommon(
                      controller: textController,
                      hintText: 'Type an item here',
                      enabled: true,
                    ),
                  ),
                  Expanded(
                    flex: 1, // 20% of the row
                    child: Container(
                      padding: EdgeInsets.only(left: 5.0,),
                      child: ButtonCommon(
                        onPressFunctionName: () {
                          String newItemText = textController.text;// get the text from your text field here
                          if (newItemText.isNotEmpty) {
                            setState(() {
                              todoItems.add(ToDoItem(text: newItemText, isChecked: false));
                            });
                          }
                        },
                        buttonText: 'Add',
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                      ),

                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 5,),
              
              //List Header "To-do List"
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0,),
              alignment: Alignment.centerLeft, // Set the alignment to the left
              child: Text(
                'Todo List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: todoItems.length,
                itemBuilder: (context, index) {
                  final todoItem = todoItems[index];
                  return ToDoItem(
                    text: todoItem.text,
                    isChecked: todoItem.isChecked,
                    onChecked: () {
                      setState(() {
                        todoItem.isChecked = !todoItem.isChecked; // Toggle isChecked
                      });
                    },
                    onDelete: () {
                      setState(() {
                        todoItems.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),           
          ],
         ),
        )
  
      )
    );
  }
}