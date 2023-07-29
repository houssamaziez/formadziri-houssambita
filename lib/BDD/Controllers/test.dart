// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:formadziri/BDD/Api/UrlApi.dart';
import 'package:formadziri/BDD/Model/home.dart';


import '../Model/Teachers.dart';

class Datasevices {
  Dio dio = Dio();
  adreservices() {
    BaseOptions options = BaseOptions(
      baseUrl: UrlApi.hostUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> get({required url}) async {
    try {
      Response response = await dio.get(url);
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  Future<List<Teachers>> getTeachers(urlpath) async {
    final List<dynamic> data = await get(url: urlpath);

    return data.map((gard) => Teachers.fromJson(gard)).toList();
  }

  Future<List<Category>> getCategories(urlpath) async {
    final List<dynamic> data = await get(url: urlpath);
    return data.map((gard) => Category.fromJson(gard)).toList();
  }
}
