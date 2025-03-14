import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Application UI',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Student Application'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Input & Grid'),
              Tab(text: 'List View'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InputAndGridTab(),
            ListViewTab(),
          ],
        ),
      ),
    );
  }
}

class InputAndGridTab extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter your email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Text('Submit'),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Card(
                  color: colors[index],
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Grid Item ${index + 1}',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Card(
          child: ListTile(
            title: Text('List Item 1'),
            subtitle: Text('Description for item 1'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('List Item 2'),
            subtitle: Text('Description for item 2'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('List Item 3'),
            subtitle: Text('Description for item 3'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('List Item 4'),
            subtitle: Text('Description for item 4'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('List Item 5'),
            subtitle: Text('Description for item 5'),
          ),
        ),
      ],
    );
  }
}