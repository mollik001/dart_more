void main() {
  ToDoList toDoList = ToDoList();

  toDoList.addTask(Task("Buy groceries"));
  toDoList.addTask(Task("Read a book"));
  toDoList.addTask(Task("Finish homework"));

  toDoList.markTaskCompleted(1);

  toDoList.displayTasks();
}

class Task {
  String title;
  bool isCompleted;

  Task(this.title) : isCompleted = false;
}

class ToDoList {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void markTaskCompleted(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].isCompleted = true;
    }
  }

  void displayTasks() {
    for (int i = 0; i < tasks.length; i++) {
      String status = tasks[i].isCompleted ? "Completed" : "Not Completed";
      print("${i + 1}. ${tasks[i].title} - $status");
    }
  }
}
