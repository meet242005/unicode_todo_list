import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo List',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: const TodoListPage());
  }
}

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController todoController = TextEditingController();

  List todo_data = [
    {
      "title": "Todo 1",
      "isChecked": false,
    },
    {
      "title": "Todo 2",
      "isChecked": false,
    },
    {
      "title": "Todo 3",
      "isChecked": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade50,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://plus.unsplash.com/premium_photo-1675130119373-61ada6685d63"),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  )),
                ],
              ),
            ),
            Text(
              "All ToDos",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: todo_data.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: todo_data[index]['isChecked'],
                          onChanged: (bool? value) {
                            setState(() {
                              todo_data[index]['isChecked'] = value;
                            });
                          },
                        ),
                        Expanded(
                            child: Text(
                          todo_data[index]['title'],
                          style: TextStyle(
                            decoration: todo_data[index]['isChecked']
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              todo_data.removeAt(index);
                            });
                          },
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(Icons.delete,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                controller: todoController,
                decoration: InputDecoration(
                  hintText: "Add a new todo",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  todo_data.add({
                    "title": todoController.text,
                    "isChecked": false,
                  });
                  todoController.clear();
                });
              },
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.add, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
