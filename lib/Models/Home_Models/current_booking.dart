// To parse this JSON data, do
//
//     final currentBooking = currentBookingFromJson(jsonString);

import 'dart:convert';

CurrentBooking currentBookingFromJson(String str) =>
    CurrentBooking.fromJson(json.decode(str));

String currentBookingToJson(CurrentBooking data) => json.encode(data.toJson());

class CurrentBooking {
  CurrentBooking({
    this.success,
    this.apiTitleAr,
    this.apiTitleEn,
    this.apiMsgAr,
    this.apiMsgEn,
    this.apiCode,
    this.currentBooking,
  });

  bool? success;
  String? apiTitleAr;
  String? apiTitleEn;
  String? apiMsgAr;
  String? apiMsgEn;
  int? apiCode;
  CurrentBookingClass? currentBooking;

  factory CurrentBooking.fromJson(Map<String, dynamic> json) => CurrentBooking(
        success: json["Success"],
        apiTitleAr: json["ApiTitleAr"],
        apiTitleEn: json["ApiTitleEn"],
        apiMsgAr: json["ApiMsgAr"],
        apiMsgEn: json["ApiMsgEn"],
        apiCode: json["ApiCode"],
        currentBooking: CurrentBookingClass.fromJson(json["CurrentBooking"]),
      );

  Map<String, dynamic> toJson() => {
        "Success": success,
        "ApiTitleAr": apiTitleAr,
        "ApiTitleEn": apiTitleEn,
        "ApiMsgAr": apiMsgAr,
        "ApiMsgEn": apiMsgEn,
        "ApiCode": apiCode,
        "CurrentBooking": currentBooking!.toJson(),
      };
}

class CurrentBookingClass {
  CurrentBookingClass({
    this.idBookingDetail,
    this.bookingTurnNumber,
    this.clientName,
    this.clientPhone,
    this.branchNameEn,
    this.branchNameAr,
    this.brandServiceNameEn,
    this.brandServiceNameAr,
    this.brandNameEn,
    this.brandNameAr,
    this.bookingDate,
    this.number,
  });

  int? idBookingDetail;
  int? bookingTurnNumber;
  String? clientName;
  String? clientPhone;
  String? branchNameEn;
  String? branchNameAr;
  String? brandServiceNameEn;
  String? brandServiceNameAr;
  String? brandNameEn;
  String? brandNameAr;
  DateTime? bookingDate;
  String? number;

  factory CurrentBookingClass.fromJson(Map<String, dynamic> json) =>
      CurrentBookingClass(
        idBookingDetail: json["IDBookingDetail"],
        bookingTurnNumber: json["BookingTurnNumber"],
        clientName: json["ClientName"],
        clientPhone: json["ClientPhone"],
        branchNameEn: json["BranchNameEn"],
        branchNameAr: json["BranchNameAr"],
        brandServiceNameEn: json["BrandServiceNameEn"],
        brandServiceNameAr: json["BrandServiceNameAr"],
        brandNameEn: json["BrandNameEn"],
        brandNameAr: json["BrandNameAr"],
        bookingDate: DateTime.parse(json["BookingDate"]),
        number: json["Number"],
      );

  Map<String, dynamic> toJson() => {
        "IDBookingDetail": idBookingDetail,
        "BookingTurnNumber": bookingTurnNumber,
        "ClientName": clientName,
        "ClientPhone": clientPhone,
        "BranchNameEn": branchNameEn,
        "BranchNameAr": branchNameAr,
        "BrandServiceNameEn": brandServiceNameEn,
        "BrandServiceNameAr": brandServiceNameAr,
        "BrandNameEn": brandNameEn,
        "BrandNameAr": brandNameAr,
        "BookingDate": bookingDate!.toIso8601String(),
        "Number": number,
      };
}
