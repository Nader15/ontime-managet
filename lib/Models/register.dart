// To parse this JSON data, do
//
//     final register = registerFromJson(jsonString);

import 'dart:convert';

Register registerFromJson(String str) => Register.fromJson(json.decode(str));

String registerToJson(Register data) => json.encode(data.toJson());

class Register {
  Register({
    this.success,
    this.apiTitleAr,
    this.apiTitleEn,
    this.apiMsgAr,
    this.apiMsgEn,
    this.apiCode,
    this.idUser,
    this.userPhone,
    this.userName,
    this.userEmail,
    this.userStatus,
    this.accessToken,
  });

  bool? success;
  String? apiTitleAr;
  String? apiTitleEn;
  String? apiMsgAr;
  String? apiMsgEn;
  int? apiCode;
  int? idUser;
  String? userPhone;
  String? userName;
  String? userEmail;
  String? userStatus;
  String? accessToken;

  factory Register.fromJson(Map<String, dynamic> json) => Register(
        success: json["Success"],
        apiTitleAr: json["ApiTitleAr"],
        apiTitleEn: json["ApiTitleEn"],
        apiMsgAr: json["ApiMsgAr"],
        apiMsgEn: json["ApiMsgEn"],
        apiCode: json["ApiCode"],
        idUser: json["IDUser"],
        userPhone: json["UserPhone"],
        userName: json["UserName"],
        userEmail: json["UserEmail"],
        userStatus: json["UserStatus"],
        // ignore: prefer_if_null_operators
        accessToken: json["AccessToken"] == null ? '' : json["AccessToken"],
      );

  Map<String, dynamic> toJson() => {
        "Success": success,
        "ApiTitleAr": apiTitleAr,
        "ApiTitleEn": apiTitleEn,
        "ApiMsgAr": apiMsgAr,
        "ApiMsgEn": apiMsgEn,
        "ApiCode": apiCode,
        "IDUser": idUser,
        "UserPhone": userPhone,
        "UserName": userName,
        "UserEmail": userEmail,
        "UserStatus": userStatus,
        "AccessToken": accessToken,
      };
}
