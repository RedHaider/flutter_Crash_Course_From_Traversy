import 'package:flutter/material.dart';



class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        body: TaskList(),
      ),
    );
  }
}

class TaskList extends StatelessWidget{
  final List<Task> task = [
    Task(title: 'Task one', description: 'This is task one', date: '12/23/23'),
    Task(title: 'Task one', description: 'This is task one', date: '12/23/23'),
    Task(title: 'Task one', description: 'This is task one', date: '12/23/23'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Task Board"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context,index){
          return Card(task: task[index],);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
      ),
    );

  }
}

class Task {
  final String title;
  final String description;
  final String date;

  Task({
    required this.title,
    required this.description,
    required this.date,
  });
}

class Card extends StatelessWidget {
  final Task task;

  const Card({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.03)
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              Text(
                task.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(task.description),
              SizedBox(height: screenHeight * 0.02),
              Text(task.date),
            ]
        )
    );
  }
}

