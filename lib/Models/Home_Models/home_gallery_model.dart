// To parse this JSON data, do
//
//     final homeGalleryModel = homeGalleryModelFromJson(jsonString);

import 'dart:convert';

HomeGalleryModel homeGalleryModelFromJson(String str) =>
    HomeGalleryModel.fromJson(json.decode(str));

String homeGalleryModelToJson(HomeGalleryModel data) =>
    json.encode(data.toJson());

class HomeGalleryModel {
  HomeGalleryModel({
    required this.success,
    required this.apiTitleAr,
    required this.apiTitleEn,
    required this.apiMsgAr,
    required this.apiMsgEn,
    required this.apiCode,
    required this.response,
  });

  bool success;
  String apiTitleAr;
  String apiTitleEn;
  String apiMsgAr;
  String apiMsgEn;
  int apiCode;
  List<Response> response;

  factory HomeGalleryModel.fromJson(Map<String, dynamic> json) =>
      HomeGalleryModel(
        success: json["success"],
        apiTitleAr: json["apiTitleAr"],
        apiTitleEn: json["apiTitleEn"],
        apiMsgAr: json["apiMsgAr"],
        apiMsgEn: json["apiMsgEn"],
        apiCode: json["apiCode"],
        response: List<Response>.from(
            json["response"].map((x) => Response.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "apiTitleAr": apiTitleAr,
        "apiTitleEn": apiTitleEn,
        "apiMsgAr": apiMsgAr,
        "apiMsgEn": apiMsgEn,
        "apiCode": apiCode,
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
      };
}

class Response {
  Response({
    required this.idPageGallery,
    required this.idPage,
    required this.pageGalleryPath,
    required this.pageGalleryTextEn,
    required this.pageGalleryTextAr,
    required this.pageGalleryType,
    required this.pageGallerySection,
    required this.pageGallerDeleted,
    required this.createdAt,
    required this.updatedAt,
  });

  int idPageGallery;
  int idPage;
  String pageGalleryPath;
  String pageGalleryTextEn;
  String pageGalleryTextAr;
  String pageGalleryType;
  String pageGallerySection;
  int pageGallerDeleted;
  DateTime createdAt;
  DateTime updatedAt;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        idPageGallery: json["IDPageGallery"],
        idPage: json["IDPage"],
        pageGalleryPath: json["PageGalleryPath"],
        pageGalleryTextEn: json["PageGalleryTextEn"],
        pageGalleryTextAr: json["PageGalleryTextAr"],
        pageGalleryType: json["PageGalleryType"],
        pageGallerySection: json["PageGallerySection"],
        pageGallerDeleted: json["PageGallerDeleted"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "IDPageGallery": idPageGallery,
        "IDPage": idPage,
        "PageGalleryPath": pageGalleryPath,
        "PageGalleryTextEn": pageGalleryTextEn,
        "PageGalleryTextAr": pageGalleryTextAr,
        "PageGalleryType": pageGalleryType,
        "PageGallerySection": pageGallerySection,
        "PageGallerDeleted": pageGallerDeleted,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
