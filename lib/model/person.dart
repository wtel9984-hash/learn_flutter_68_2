import 'package:flutter/material.dart';

enum Job {
  developer(
    title: "นักพัฒนา",
    description: "นักพัฒนาซอฟต์แวร์ที่สร้างและดูแลแอปพลิเคชันต่าง ๆ",
    image: "assets/images/cat1.jpg",
    color: Colors.blue
  ),
  teacher(
    title: "ครู",
    description: "ผู้สอนและให้ความรู้แก่นักเรียนในโรงเรียนหรือสถาบันการศึกษา",
    image: "assets/images/cat1.jpg",
    color: Colors.green 
  ),
  doctor(
    title: "หมอ",
    description: "ผู้ให้การรักษาและดูแลสุขภาพของผู้ป่วยในโรงพยาบาลหรือคลินิก",
    image: "assets/images/cat1.jpg",
    color: Colors.red
  ),
  engineer(
    title: "วิศวกร",
    description: "ผู้ออกแบบและพัฒนาโครงสร้างพื้นฐานหรือเทคโนโลยีต่าง ๆ",
    image: "assets/images/cat1.jpg",
    color: Colors.orange
  ),
  businessman(
    title: "นักธุรกิจ",
    description: "ผู้ที่ดำเนินกิจการหรือธุรกิจเพื่อสร้างรายได้และกำไร",
    image: "assets/images/cat1.jpg",
    color: Colors.purple
  );
  const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });
  final String title;
  final String description;
  final String image;
  final Color color;
}

class Person {
  final String name;
  final int age;
  final Job job;

  const Person({required this.name, required this.age, required this.job});
}

final List<Person> people = [
  Person(name: "สมชาย", age: 30, job: Job.developer),
  Person(name: "สมศรี", age: 28, job: Job.teacher),
  Person(name: "สมปอง", age: 35, job: Job.doctor),
  Person(name: "สมหมาย", age: 40, job: Job.engineer),
  Person(name: "สมจิตร", age: 25, job: Job.businessman),
];