import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formkey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job?_job = Job.developer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: Colors.green,
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
          //     DropdownButtonFormField(
          //       decoration: InputDecoration(labelText: "Job"),
          //       items: Job.values.map((key){
          //         return DropdownMenuItem(value: key, child: Text(key.title));
          //       }).toList(),
          //       onChanged: (value) {
          //         print("Selected Job: ${value?.title}");
          //       },
          //     ),
          //     SizedBox(height: 20),
          //     FilledButton(
          //       onPressed: () {

          //       },
          //       style: FilledButton.styleFrom(
          //         backgroundColor: Colors.green,
          //         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          //       ),
          //       child: Text(
          //         "Submit",
          //         style: TextStyle(color: Colors.white, fontSize: 20),
          //       ),
          //     )
          //   ],
          // ),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณากรอกชื่อ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value ?? "";
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณากรอกอายุ";
                    }
                    if (int.tryParse(value) == null) {
                      return "กรุณากรอกตัวเลข";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.tryParse(value ?? "") ?? 20;
                  },
                ),
                DropdownButtonFormField<Job?>(
                  decoration: InputDecoration(labelText: "Job"),
                  initialValue: _job,
                  items: Job.values.map((job) {
                    return DropdownMenuItem(
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
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      _formkey.currentState!.save();
                      print("Name: $_name, Age: $_age, Job: ${_job?.title}");

                      setState(() {
                        people.add(Person(name: _name, age: _age, job: _job!));
                      });

                      _formkey.currentState!.reset();

                      Navigator.pop(context);
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          )
        )
    );
  }
}