class UserModel {
  String? name;
  String? image;
  String? uid;
  String? phonenumber;
  UserModel({required this.name, this.image, this.phonenumber, this.uid});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'],
        phonenumber: json['phonenumber'],
        image: json['image'],
        uid: json['uid']);
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uid': uid,
      'phonenumber': phonenumber,
      'image': image
    };
  }
}
