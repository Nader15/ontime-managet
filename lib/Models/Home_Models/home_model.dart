// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
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

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
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
    required this.TitleEn,
    required this.TitleAr,
    required this.products,
  });

  String TitleEn;
  String TitleAr;
  List<Product> products;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        TitleEn: json["TitleEn"],
        TitleAr: json["TitleAr"],
        products: List<Product>.from(
            json["Products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "TitleEn": TitleEn,
        "TitleAr": TitleAr,
        "Products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.idProduct,
    required this.idSubCategory,
    required this.idCompany,
    required this.productNameEn,
    required this.productNameAr,
    required this.productDescriptionEn,
    required this.productDescriptionAr,
    required this.productPrice,
    required this.productRating,
    required this.featuredProduct,
    required this.newArrivalProduct,
    required this.productActive,
    required this.createdAt,
    required this.updatedAt,
    required this.productImage,
  });

  int idProduct;
  int idSubCategory;
  int idCompany;
  String productNameEn;
  String productNameAr;
  String? productDescriptionEn;
  String? productDescriptionAr;
  int productPrice;
  int productRating;
  int featuredProduct;
  int newArrivalProduct;
  int productActive;
  DateTime createdAt;
  DateTime updatedAt;
  String productImage;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        idProduct: json["IDProduct"],
        idSubCategory: json["IDSubCategory"],
        idCompany: json["IDCompany"],
        productNameEn: json["ProductNameEn"],
        productNameAr: json["ProductNameAr"],
        productDescriptionEn: json["ProductDescriptionEn"],
        productDescriptionAr: json["ProductDescriptionAr"],
        productPrice: json["ProductPrice"],
        productRating: json["ProductRating"],
        featuredProduct: json["FeaturedProduct"],
        newArrivalProduct: json["NewArrivalProduct"],
        productActive: json["ProductActive"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productImage: json["ProductImage"],
      );

  Map<String, dynamic> toJson() => {
        "IDProduct": idProduct,
        "IDSubCategory": idSubCategory,
        "IDCompany": idCompany,
        "ProductNameEn": productNameEn,
        "ProductNameAr": productNameAr,
        "ProductDescriptionEn": productDescriptionEn,
        "ProductDescriptionAr": productDescriptionAr,
        "ProductPrice": productPrice,
        "ProductRating": productRating,
        "FeaturedProduct": featuredProduct,
        "NewArrivalProduct": newArrivalProduct,
        "ProductActive": productActive,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "ProductImage": productImage,
      };
}
