class Person {
  String name;
  int age;
  String job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: "นักพัฒนา"),
  Person(name: "สมศรี", age: 28, job: "ครู"),
  Person(name: "สมปอง", age: 35, job: "หมอ"),
  Person(name: "สมหมาย", age: 40, job: "วิศวกร"),
  Person(name: "สมจิตร", age: 25, job: "นักธุรกิจ"),
];