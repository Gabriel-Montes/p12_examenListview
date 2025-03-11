import 'package:flutter/material.dart';

void main() => runApp(const Myeamen());

class Myeamen extends StatelessWidget {
  const Myeamen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  final List<String> items = [
    "Apple",
    "Food",
    "Product",
    "Item",
    "List View",
    "New App",
    "Design"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gabriel Montes 1276",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text(
                  items[index][0],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              title: Text(
                items[index],
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
    );
  }
}
