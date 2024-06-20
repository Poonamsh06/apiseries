class Student {
  String? name;
  String? branch;
  int? rollno;

  Student({this.name, this.branch, this.rollno});

  factory Student.fromJson(Map<String, dynamic> data) {
    return Student(
        name: data["name"], branch: data["branch"], rollno: data["rollno"]);
  }
}
