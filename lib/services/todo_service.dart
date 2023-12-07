import '../common/item_common.dart'; // Import ToDoItem

class TodoService {
  static void addItem(List<ToDoItem> todoItems, String newItemText) {
    if (newItemText.isNotEmpty) {
      todoItems.add(ToDoItem(text: newItemText, isChecked: false));
    }
  }
}
