import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job _job = Job.developer;

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
          // child: Column(
          //   children: [
          //     TextFormField(decoration: InputDecoration(labelText: "Name")),
          //     TextFormField(
          //       decoration: InputDecoration(labelText: "Age"),
          //       keyboardType: TextInputType.number,
          //     ),
          //     DropdownButtonFormField<Job>(
          //       decoration: const InputDecoration(labelText: "Job"),
          //       items: Job.values.map((job) {
          //         return DropdownMenuItem<Job>(
          //           value: job,
          //           child: Text(job.title),
          //         );
          //       }).toList(),
          //       onChanged: (value) {
          //         print("Selected Job : ${value?.title}");
          //       },
          //     ),
          //     SizedBox(height: 20),
          //     FilledButton(
          //       onPressed:  (){

          //       },
          //       style: FilledButton.styleFrom(
          //         backgroundColor: Colors.blue,
          //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          //       ),
          //       child: Text(
          //         "Summit",
          //         style: TextStyle(color: Colors.deepOrange, fontSize: 20),
          //       ),
          //     ),
          //   ],
          // ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter a name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value ?? "";
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter age';
                    }
                    if (int.tryParse(value) == null) {
                      return 'please enter a valid number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.tryParse(value ?? '') ?? 20;
                  },
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
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _formKey.currentState?.save();
                      print("Name : $_name , Age : $_age , Job : ${_job?.title}");

                      setState(() {
                        people.add(Person(name: _name, age: _age, job: _job));
                      });

                      _formKey.currentState?.reset();
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.black87,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50), 
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.deepOrangeAccent , fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}