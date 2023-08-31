import 'package:djcsi1/todo.dart';
import 'package:djcsi1/todo_item.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  final todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 215, 220),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 207, 215, 220),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 35,
              ),
            ),
            Container(
                height: 40,
                width: 40,
                child: ClipRRect(child: Image.asset('assets/3135715.png'))),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 166, 46),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 226, 166, 46),
                          blurRadius: 25,
                        )
                      ]),
                  height: 125,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: const Text(
                          "Manage your \ntime well",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                                child: Image.asset('assets/notes2.png')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: const Text(
                          "Categories",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 9, 9, 9),
                            fontStyle: FontStyle.normal,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 181, 129, 26),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                      )
                                    ]),
                                height: 70,
                                width: 70,
                                child: Icon(
                                  Icons.badge,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Work",
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 181, 129, 26),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                      )
                                    ]),
                                height: 70,
                                width: 70,
                                child: Icon(
                                  Icons.supervised_user_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Personal",
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 181, 129, 26),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                      )
                                    ]),
                                height: 70,
                                width: 70,
                                child: Icon(
                                  Icons.shopping_bag,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Shopping",
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 181, 129, 26),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                      )
                                    ]),
                                height: 70,
                                width: 70,
                                child: Icon(
                                  Icons.health_and_safety_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                "Health",
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: const Text(
                      "Your tasks for today",
                      style: TextStyle(
                        color: Color.fromARGB(255, 9, 9, 9),
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                for (ToDo todo2 in todosList)
                  ToDoItem(
                    todo: todo2,
                    onToDoChanged: handleToDoChange,
                    onDeleteItem: deleteToDoItem,
                  ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              controller: todoController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                hintText: 'Add new task...',
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              addToDoItem(todoController.text);
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      )),
    );
  }

  void handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void addToDoItem(String todo) {
    setState(() {
      todosList.add(ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: todo));
    });
    todoController.clear();
  }
}
