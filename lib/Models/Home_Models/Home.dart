// To parse this JSON data, do
//
//     final home = homeFromJson(jsonString);

import 'dart:convert';

Home homeFromJson(String str) => Home.fromJson(json.decode(str));

String homeToJson(Home data) => json.encode(data.toJson());

class Home {
  Home({
    this.success,
    this.apiTitleAr,
    this.apiTitleEn,
    this.apiMsgAr,
    this.apiMsgEn,
    this.apiCode,
    this.userAppServices,
  });

  bool? success;
  String? apiTitleAr;
  String? apiTitleEn;
  String? apiMsgAr;
  String? apiMsgEn;
  int? apiCode;
  List<UserAppService>? userAppServices;

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        success: json["Success"],
        apiTitleAr: json["ApiTitleAr"],
        apiTitleEn: json["ApiTitleEn"],
        apiMsgAr: json["ApiMsgAr"],
        apiMsgEn: json["ApiMsgEn"],
        apiCode: json["ApiCode"],
        userAppServices: List<UserAppService>.from(
            json["UserAppServices"].map((x) => UserAppService.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Success": success,
        "ApiTitleAr": apiTitleAr,
        "ApiTitleEn": apiTitleEn,
        "ApiMsgAr": apiMsgAr,
        "ApiMsgEn": apiMsgEn,
        "ApiCode": apiCode,
        "UserAppServices":
            List<dynamic>.from(userAppServices!.map((x) => x.toJson())),
      };
}

class UserAppService {
  UserAppService({
    this.idUserAppService,
    this.idUser,
    this.idAppService,
    this.userAppServiceActive,
    this.appServiceNameEn,
    this.appServiceNameAr,
    this.appServiceLogo,
    this.appServiceActive,
    this.appServiceDimmed,
  });

  int? idUserAppService;
  int? idUser;
  int? idAppService;
  int? userAppServiceActive;
  String? appServiceNameEn;
  String? appServiceNameAr;
  String? appServiceLogo;
  int? appServiceActive;
  int? appServiceDimmed;

  factory UserAppService.fromJson(Map<String, dynamic> json) => UserAppService(
        idUserAppService: json["IDUserAppService"],
        idUser: json["IDUser"],
        idAppService: json["IDAppService"],
        userAppServiceActive: json["UserAppServiceActive"],
        appServiceNameEn: json["AppServiceNameEn"],
        appServiceNameAr: json["AppServiceNameAr"],
        appServiceLogo: json["AppServiceLogo"],
        appServiceActive: json["AppServiceActive"],
        appServiceDimmed: json["AppServiceDimmed"],
      );

  Map<String, dynamic> toJson() => {
        "IDUserAppService": idUserAppService,
        "IDUser": idUser,
        "IDAppService": idAppService,
        "UserAppServiceActive": userAppServiceActive,
        "AppServiceNameEn": appServiceNameEn,
        "AppServiceNameAr": appServiceNameAr,
        "AppServiceLogo": appServiceLogo,
        "AppServiceActive": appServiceActive,
        "AppServiceDimmed": appServiceDimmed,
      };
}
