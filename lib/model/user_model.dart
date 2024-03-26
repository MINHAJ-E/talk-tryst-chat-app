class UserModel {
  String? userName;
  String? bio;
  String? userId;
  String? phoneNumber;
  String? profilePicture;
  UserModel({
    this.bio,
    this.userId,
    this.userName,
    this.phoneNumber,
    this.profilePicture,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        userName: json['name'],
        bio: json['bio'],
        userId: json['userid'],
        phoneNumber: json['phone'],
        profilePicture: json['profile_picture']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': userName,
      'bio': bio,
      'phone': phoneNumber,
      'userid': userId,
      'profile_picture': profilePicture,
    };
  }
}
