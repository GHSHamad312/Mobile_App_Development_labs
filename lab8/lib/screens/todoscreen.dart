import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lab8/providers/todoprovider.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 111, 255, 138),
                Color.fromARGB(255, 94, 191, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  String todoTitle = '';

                  return AlertDialog(
                    title: const Text("Add Todo"),
                    content: TextField(
                      onChanged: (value) {
                        todoTitle = value;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Add todo here',
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.red,
                        ),
                        child: const Text('Cancel'),
                      ),

                      TextButton(
                        onPressed: () {
                          if (todoTitle.isNotEmpty) {
                            todoProvider.addtodo(todoTitle);
                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add, color: Colors.blue, size: 50),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HELLO",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'HAMAD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Good morning",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      DateTime date = DateTime.now().add(Duration(days: index));
                      String day;
                      if (index == 0) {
                        day = "Today";
                      } else if (index == 1) {
                        day = "Tomorrow";
                      } else {
                        day = DateFormat('EEE').format(date);
                      }
                      return TextButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              day == "Today"
                                  ? Colors.black
                                  : Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            day,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child:
                    todoProvider.get().isEmpty
                        ? Center(
                          child: Text(
                            "Wohoo!! No Tasks. Enjoy",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        )
                        : ListView.builder(
                          itemCount: todoProvider.get().length,
                          itemBuilder: (context, index) {
                            String todo = todoProvider.get()[index];
                            return SizedBox(
                              width: double.infinity,
                              height: 100,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Card(
                                  color: const Color.fromARGB(
                                    255,
                                    126,
                                    178,
                                    255,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          todo,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Spacer(),
                                        IconButton(
                                          onPressed: () {
                                            todoProvider.remove(index);
                                          },
                                          icon: Icon(Icons.delete),
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
