class Family {
  String? name;
  String? relation;
  String? education;

  int? age;
  int? phone;

  Family({this.name, this.relation, this.age, this.phone, this.education});

  factory Family.fromJson(Map<String, dynamic> data) {
    return Family(
        name: data["name"],
        education: data["education"],
        relation: data["relation"],
        age: data["age"],
        phone: data["phone"]);
  }
}
