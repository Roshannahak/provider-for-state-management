// To parse this JSON data, do
//
//     final userListModel = userListModelFromJson(jsonString);

import 'dart:convert';

UserListModel userListModelFromJson(String str) => UserListModel.fromJson(json.decode(str));

String userListModelToJson(UserListModel data) => json.encode(data.toJson());

class UserListModel {
    UserListModel({
        this.success,
        this.records,
    });

    bool? success;
    List<Record>? records;

    factory UserListModel.fromJson(Map<String, dynamic> json) => UserListModel(
        success: json["success"],
        records: List<Record>.from(json["records"].map((x) => Record.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "records": List<dynamic>.from(records!.map((x) => x.toJson())),
    };
}

class Record {
    Record({
        this.issuedDate,
        this.status,
        this.id,
        this.rid,
        this.student,
        this.from,
        this.to,
        this.destination,
        this.createdAt,
        this.updatedAt,
    });

    DateTime? issuedDate;
    String? status;
    String? id;
    String? rid;
    Student? student;
    String? from;
    String? to;
    String? destination;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory Record.fromJson(Map<String, dynamic> json) => Record(
        issuedDate: DateTime.parse(json["issuedDate"]),
        status: json["status"],
        id: json["_id"],
        rid: json["RID"],
        student: Student.fromJson(json["student"]),
        from: json["from"],
        to: json["to"],
        destination: json["destination"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "issuedDate": issuedDate?.toIso8601String(),
        "status": status,
        "_id": id,
        "RID": rid,
        "student": student?.toJson(),
        "from": from,
        "to": to,
        "destination": destination,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
    };
}

class Student {
    Student({
        this.id,
        this.branch,
        this.course,
        this.firstName,
        this.lastName,
        this.semester,
    });

    String? id;
    String? branch;
    String? course;
    String? firstName;
    String? lastName;
    int? semester;

    factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["_id"],
        branch: json["branch"],
        course: json["course"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        semester: json["semester"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "branch": branch,
        "course": course,
        "firstName": firstName,
        "lastName": lastName,
        "semester": semester,
    };
}

