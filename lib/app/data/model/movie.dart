class Movie {
  final int id;
  final String employee_name;
  final double employee_salary;
  final int employee_age;
  final String profile_image;


// ignore_for_file: non_constant_identifier_names

  Movie({required this.id, required this.employee_name, required this.employee_salary, required this.employee_age, required this.profile_image});
}
// import 'dart:convert';

// List<Todo> todoFromJson(String str) =>
//     List<Todo>.from(json.decode(str).map((x) => Todo.fromJson(x)));

// String todoToJson(List<Todo> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Todo {
//   Todo({
//     required this.id,
//     required this.employee_name,
//     required this.employee_salary,
//     required this.employee_age,
//     required this.profile_image,
//   });

//   int id;
//   String employee_name;
//   int employee_salary;
//   int employee_age;
//   String profile_image;

//   factory Todo.fromJson(Map<String, dynamic> json) => Todo(
//         id: json["id"],
//         employee_name: json["employee_name"],
//         employee_salary: json["employee_salary"],
//         employee_age: json["employee_age"],
//         profile_image: json["profile_image"],

//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "employee_name": employee_name,
//         "employee_salary": employee_salary,
//         "employee_age": employee_age,
//         "profile_image": profile_image,

//       };
// }