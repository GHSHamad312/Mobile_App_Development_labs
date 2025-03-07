import 'dart:io';

void main() {
  List<String> l1 = [];
  int op = 0;

  print("select the task to perform");
  for (int i = 0; op < 4; i++) {
    print('''
1) Add a task
2) View tasks
3) Remove task
4) exit
''');
    op = int.parse(stdin.readLineSync()!);
    switch (op) {
      case 1:
        print("enter task");
        String task = stdin.readLineSync()!;
        add(l1, task);
        print("task added succesfully");
        break;
      case 2:
        print_tasks(l1);
        break;
      case 3:
        String task = stdin.readLineSync()!;
        remove_task(l1, task);
        break;
    }
  }
}

void add(List<String> l1, String task) {
  l1.add(task);
}

void print_tasks(List<String> l1) {
  l1.forEach(print);
}

void remove_task(List<String> l1, String task) {
  bool removed = l1.remove(task);
  if (removed) {
    print("task removed");
  } else {
    print("task not found");
  }
}
