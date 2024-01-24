

import 'package:flutter/material.dart';

class Student {
  final String name;
  final String rollNumber;
  final String claass;

  Student({required this.name, required this.rollNumber, required this.claass});
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController rollNumberController = TextEditingController();
  TextEditingController claassController = TextEditingController();
  List<Student> students = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Student List'),
        
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration:  InputDecoration(labelText: 'Enter Name',),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: rollNumberController,
              decoration: InputDecoration(labelText: 'Enter Roll Number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0,),
            child: TextField(
              controller: claassController,
              decoration: InputDecoration(labelText: "Enter your class",),
            
            ),
            ),
          ElevatedButton(
            onPressed: () {
              addStudent();
            },
            child: Text('Add Student'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('Name: ${students[index].name}'),
                    subtitle: Text('Roll Number: ${students[index].rollNumber}'),
                    trailing: Text('class: ${students[index].claass}'),

                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


 void addStudent() {
    setState(() {
      String name = nameController.text;
      String rollNumber = rollNumberController.text;
      String claass = claassController.text;

      if (name.isNotEmpty && rollNumber.isNotEmpty && claass.isNotEmpty) {
        students.add(Student(name: name, rollNumber: rollNumber,claass: claass));
        nameController.clear();
        rollNumberController.clear();
        claassController.clear();
      }
    });
  }
}
class StudentDetailsPage extends StatelessWidget {
  final Student student;

  StudentDetailsPage({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${student.name}'),
            Text('Roll Number: ${student.rollNumber}'),
            Text('class: ${student.claass} ')
          ],
        ),
      ),
    );
  }
}
