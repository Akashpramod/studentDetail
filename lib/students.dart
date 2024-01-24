  
  import 'package:flutter/material.dart';
import 'package:students/home.dart';

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