class Profile {
  int? userId;
  String? name;
  String? phone;
  String? email;
  String? password;
  Null photo;
  String? userIsverfy;
  String? otp;
  String? timezone;
  String? location;
  String? registerDatetime;
  String? otpexpire;
  Null token;
  String? createdAt;
  String? updatedAt;

  Profile(
      {this.userId,
        this.name,
        this.phone,
        this.email,
        this.password,
        this.photo,
        this.userIsverfy,
        this.otp,
        this.timezone,
        this.location,
        this.registerDatetime,
        this.otpexpire,
        this.token,
        this.createdAt,
        this.updatedAt});

  Profile.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    photo = json['photo'];
    userIsverfy = json['user_isverfy'];
    otp = json['otp'];
    timezone = json['timezone'];
    location = json['location'];
    registerDatetime = json['register_datetime'];
    otpexpire = json['otpexpire'];
    token = json['token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['photo'] = this.photo;
    data['user_isverfy'] = this.userIsverfy;
    data['otp'] = this.otp;
    data['timezone'] = this.timezone;
    data['location'] = this.location;
    data['register_datetime'] = this.registerDatetime;
    data['otpexpire'] = this.otpexpire;
    data['token'] = this.token;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}