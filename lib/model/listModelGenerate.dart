class listModelGenerate {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data2>? data;
  String? error;

  listModelGenerate(
      {this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
        this.error,});

  listModelGenerate.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Data2>[];
      json['data'].forEach((v) {
        data!.add(new Data2.fromJson(v));
      });
    }
  }

  factory listModelGenerate.withError(String error) => listModelGenerate(error: error);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data2= new Map<String, dynamic>();
    data2['page'] = this.page;
    data2['per_page'] = this.perPage;
    data2['total'] = this.total;
    data2['total_pages'] = this.totalPages;
    if (this.data != null) {
      data2['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data2;
  }
}

class Data2 {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data2({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data2 = new Map<String, dynamic>();
    data2['id'] = this.id;
    data2['email'] = this.email;
    data2['first_name'] = this.firstName;
    data2['last_name'] = this.lastName;
    data2['avatar'] = this.avatar;
    return data2;
  }
}