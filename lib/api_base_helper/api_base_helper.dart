import 'dart:developer';
import 'dart:io';
import '../api_base_helper/app_exceptions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import "../utiles/constant.dart";
import "../utiles/utility.dart";
import 'package:http_parser/http_parser.dart';

import 'package:dio/dio.dart';

class ApiBaseHelper {
  final String _baseUrl = Constant.baseUrl;
  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      var token = "";
      //  var token = await Utility.jwtOrEmpty;
      var urlURi = Uri.parse(_baseUrl + url);
      log('ApiBaseHelper get url : ${_baseUrl + url}');
      final response = await http.get(urlURi, headers: {
        //'Content-Type': 'application/json',
        //'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api get recieved!');
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body) async {
    var responseJson;
    try {
      log('ApiBaseHelper post url : ${_baseUrl + url}  body : ${body}');
      var token = "";
      var urlURi = Uri.parse(_baseUrl + url);
      final response = await http.post(urlURi, body: body, headers: {
        //'Content-Type': 'application/json',
        //'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> put(String url, dynamic body) async {
    var responseJson;
    try {
      var token = "";
      var urlURi = Uri.parse(_baseUrl + url);
      final response = await http.put(urlURi, body: body, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      responseJson = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api put.');
    print(responseJson.toString());
    return responseJson;
  }

  Future<dynamic> delete(String url) async {
    var apiResponse;
    //var token = await Utility.jwtOrEmpty;
    try {
      var urlURi = Uri.parse(_baseUrl + url);
      final response = await http.delete(urlURi, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'Authorization': 'Bearer $token',
      });
      apiResponse = _returnResponse(response);
    } on SocketException {
      print('No net');
      throw FetchDataException('No Internet connection');
    }
    print('api delete.');
    return apiResponse;
  }

  Future<dynamic> multipartRequestDio(
    String url,
    Map<String, String> body,
    List<File> imageFiles,
  ) async {
    var token = "";
    var options = BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: 5000,
        receiveTimeout: 3000,
        headers: {
          'Authorization': 'Bearer $token',
        });
    Dio dio = Dio(options);

    var formData = FormData();
    for (var element in imageFiles) {
      log(" ApiBaseHelper path ${element.path}");
      formData.files.add(
        MapEntry(
          "image",
          await MultipartFile.fromFile(
            element.path,
            filename: Utility.getCurrentTimeStamp().toString(),
            contentType: MediaType("image", "jpeg"),
          ),
        ),
      );
    }

    body.forEach((key, value) {
      formData.fields.add(MapEntry(key, value));
    });

    //log(" ApiBaseHelper formData fields ${formData.fields}");
    //log("ApiBaseHelper  formData files ${formData.files}");
    var response = await dio.post(url, data: formData);
    log("ApiBaseHelper dio response ${response.toString()}");
    return json.decode(response.toString());
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        // log('responseJson: $responseJson');
        return responseJson;
      case 201:
        var responseJson = json.decode(response.body.toString());
        //  log('responseJson: $responseJson');
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());

      case 401:
        var responseJson = json.decode(response.body.toString());

        // var tokenExpired = TokenExpired.fromJson(responseJson);
        // if (tokenExpired.message == "Token_Expired") {
        //   Utility.logout();
        // }
        return responseJson;
      case 404:
        var responseJson = json.decode(response.body.toString());
        // log(" responseJson ${responseJson}");
        return responseJson;
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        // log("response.statusCode ${response.statusCode}");
        // log(" response: ${response.body.toString()}");
        var responseJson = json.decode(response.body.toString());
        //print('responseJson: $responseJson');
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
