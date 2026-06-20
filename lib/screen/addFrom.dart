import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Person"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Name")),
              TextFormField(
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              DropdownButtonFormField<Job>(
                decoration: const InputDecoration(labelText: "Job"),
                items: Job.values.map((job) {
                  return DropdownMenuItem<Job>(
                    value: job,
                    child: Text(job.title),
                  );
                }).toList(),
                onChanged: (value) {
                  print("Selected Job : ${value?.title}");
                },
              ),
            ],
          ),
        )
        )
      );
  }
}