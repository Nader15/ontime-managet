import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zari_on_time/Models/Home_Models/Home.dart';
import 'package:zari_on_time/Models/Home_Models/current_booking.dart';

import 'dart:convert';
import 'dart:async';

import 'package:zari_on_time/Models/register.dart';

class Api {
  static const String baseUrl = "https://zariontime.com/public/api/";
  static Future<Register> register(
      String user_phone,
      String user_password,
      String brand_en,
      String brand_ar,
      String id_cate,
      XFile logo_brand) async {
    String endPoint = baseUrl + "manager/register";
    String fileName = logo_brand.path.split('/').last;
    FormData formData = FormData.fromMap({
      "UserPhone": user_phone,
      "UserPassword": user_password,
      "BrandNameEn": brand_en,
      "BrandNameAr": brand_ar,
      "IDCategory": id_cate,
      "BrandLogo":
          await MultipartFile.fromFile(logo_brand.path, filename: fileName),
    });

    Response response = await Dio().post(endPoint, data: formData);
    if (response.statusCode == 200) {
      var data = response.data;
      print('data is $data');

      Register categories = Register.fromJson(data);

      return categories;
    }
    return Register();
  }

  static Future<Register> login(
    String user_name,
    String user_password,
  ) async {
    String endPoint = baseUrl + "manager/login";

    var formData = {
      "UserName": user_name,
      "Password": user_password,
    };
    print(formData);
    Response response = await Dio().post(endPoint, data: formData);
    if (response.statusCode == 200) {
      var data = response.data;
      print('data is $data');
      Register categories = Register.fromJson(data);

      return categories;
    }
    return Register();
  }

  static Future<Home> home() async {
    String endPoint = baseUrl + "manager/home";
    final datacount = GetStorage();

    print(endPoint);
    print('${datacount.read("accessToken")}');
    Response response = await Dio().get(endPoint,
        options: Options(headers: {
          'Accept': 'application/json',
          'Authorization':
              // ignore: prefer_adjacent_string_concatenation
              'Bearer ' +
                  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3phcmlvbnRpbWUuY29tL3B1YmxpYy9hcGkvbWFuYWdlci9sb2dpbiIsImlhdCI6MTY1OTIwMzc4MywiZXhwIjoxNjY0Mzg3NzgzLCJuYmYiOjE2NTkyMDM3ODMsImp0aSI6IndHRVhqYlJaUkhTSTFsQjAiLCJzdWIiOiIxIiwicHJ2IjoiZmQ5ZTRmOTI4ODc5Y2MxYTBlYzkwYWMzMDlmN2FlZjYwMmRhNjQ3OSJ9.XrjEKpnfhREgyl1vina8-0MK4zPa30IDkr4qQ1MlaE8",
        }));
    if (response.statusCode == 200) {
      var data = response.data;
      print('data is $data');
      Home categories = Home.fromJson(data);

      return categories;
    }
    return Home();
  }

  static Future<CurrentBooking> current_booking() async {
    String endPoint = baseUrl + "manager/services/1";
    final datacount = GetStorage();

    print(endPoint);
    print('${datacount.read("accessToken")}');
    Response response = await Dio().get(endPoint,
        options: Options(headers: {
          'Accept': 'application/json',
          'Authorization':
              // ignore: prefer_adjacent_string_concatenation
              'Bearer ' +
                  "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3phcmlvbnRpbWUuY29tL3B1YmxpYy9hcGkvbWFuYWdlci9sb2dpbiIsImlhdCI6MTY1OTIwMzc4MywiZXhwIjoxNjY0Mzg3NzgzLCJuYmYiOjE2NTkyMDM3ODMsImp0aSI6IndHRVhqYlJaUkhTSTFsQjAiLCJzdWIiOiIxIiwicHJ2IjoiZmQ5ZTRmOTI4ODc5Y2MxYTBlYzkwYWMzMDlmN2FlZjYwMmRhNjQ3OSJ9.XrjEKpnfhREgyl1vina8-0MK4zPa30IDkr4qQ1MlaE8",
        }));
    if (response.statusCode == 200) {
      var data = response.data;
      print('data is $data');
      CurrentBooking current_booking = CurrentBooking.fromJson(data);

      return current_booking;
    }
    return CurrentBooking();
  }
}
