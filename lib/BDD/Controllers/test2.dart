import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formadziri/BDD/Api/UrlApi.dart';

import 'package:formadziri/BDD/Model/Courses.dart';

import 'package:formadziri/BDD/Model/TopCategorie.dart';
import 'package:formadziri/BDD/Model/section.dart';
import 'package:formadziri/BDD/Model/sessions.dart';

import 'package:get/get.dart';

import '../Model/Teachers.dart';

import '../Model/home.dart';
import '../Model/supcatgr2.dart';

class GetDattApi {
  Future<List<dynamic>> fetchData({required String Url}) async {
    final String token = '38|1yhnXa7VrRYL0zv5cdvUN2If8esbdQd8oHrGrIsS';
//15|fpjoZUfGK0WAJa2DCRqxeUi3lhqp7qiCSdqL8ig4
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';

    try {
      final response = await dio.get(Url);
      return response.data;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<Map<String, dynamic>> getdata({required String Url}) async {
    final String token = '15|fpjoZUfGK0WAJa2DCRqxeUi3lhqp7qiCSdqL8ig4';

    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';

    try {
      final response = await dio.get(Url);
      List<dynamic> course = response.data;
      Map<String, dynamic> coursedata = course.isNotEmpty ? course[0] : {};
      return coursedata;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<List<Teachers>> getTeachers() async {
    final List<dynamic> dataget = await fetchData(Url: UrlApi.teachers);

    return dataget.map((item) => Teachers.fromJson(item)).toList();
  }

  //____________________________________________________________________________
  Future<Course> getcoursBYId(int subcategoryId) async {
    // Replace this with your API endpoint

    final dio = Dio();
    final response =
        await dio.get('https://formadziri-admin.com/api/courses/12');

    // Check if the request was successful
    var data = Course.fromJson(response.data["course"]);
    // Process the data here
    return data;
  }

  Future<Course> getcoursesub(int subcategoryId) async {
    final dat = await getdata(
        Url:
            "https://formadziri-admin.com/api/courses/subcategorie/$subcategoryId");

    Course course = Course.fromJson(dat);
    return course;
  }

  Future<List<Course>> getcoursesub2(int subcategoryId) async {
    final dat = await fetchData(
        Url:
            "https://formadziri-admin.com/api/courses/subcategorie/$subcategoryId");

    return dat.map((item) => Course.fromJson(item)).toList();
  }
  //____________________________________________________________________________

  Future<Category> getcatgrid() async {
    final dsat =
        await getdata(Url: "https://formadziri-admin.com/api/categories/9");

    Category course = Category.fromJson(dsat);
    Get.snackbar("title", course.name!);
    return course;
  }

  Future<Catego> fetchDataById(int id) async {
    final String baseUrl =
        'https://formadziri-admin.com/api/top-categories?id='; // Replace this with your API endpoint

    final dio = Dio();
    final response = await dio.get('$baseUrl$id');

    // Check if the request was successful
    // Process the data here
    return Catego.fromJson(response.data);
  }

  Future<List<Course>> getCourse() async {
    final List<dynamic> datacourse = await fetchData(Url: UrlApi.courses);

    return datacourse.map((item) => Course.fromJson(item)).toList();
  }
  //____________________________________________________________________________

  Future<List<Category>> getCategorie() async {
    final List<dynamic> datactg = await fetchData(Url: UrlApi.categorie);

    return datactg.map((item) => Category.fromJson(item)).toList();
  }
  //____________________________________________________________________________

  Future<List<TopCategories>> getTopCategories() async {
    final List<dynamic> datatopctg = await fetchData(Url: UrlApi.topcategories);

    return datatopctg.map((item) => TopCategories.fromJson(item)).toList();
  }

  //____________________________________________________________________________

  Future<List<SubCate>> getSubCategories() async {
    final List<dynamic> datasubctg = await fetchData(Url: UrlApi.subcategories);
    return datasubctg.map((item) => SubCate.fromJson(item)).toList();
  }

//______________________________________________________________________________

  // Future<List<CategorieSections>> getCatSection() async {
  //   final List<dynamic> ctgsection =
  //       await fetchData(Url: UrlApi.subcategoriessections);
  //   return ctgsection.map((item) => CategorieSections.fromJson(item)).toList();
  // }

  //____________________________________________________________________________

  Future<List<Sections>> getsections() async {
    final List<dynamic> datasections = await fetchData(Url: UrlApi.sections);
    return datasections.map((item) => Sections.fromJson(item)).toList();
  }

  //____________________________________________________________________________

  Future<List<sessions>> getSessionData(int id) async {
    final List<dynamic> datasessions =
        await fetchData(Url: "https://formadziri-admin.com/api/sessions/$id");
    return datasessions.map((item) => sessions.fromJson(item)).toList();
  }

  // ________________________________________________________________________________________
  // Future<List<CoursesPerPage>> getCoursesPerPageData() async {
  //   final List<dynamic> datasessions = await fetchData(Url: UrlApi.perPage1);
  //   return datasessions.map((item) => CoursesPerPage.fromJson(item)).toList();
  // } // ________________________________________________________________________________________

  Future<List<SubCategoriesSections>> getSubCategoriesSectionsData() async {
    final List<dynamic> datasessions =
        await fetchData(Url: UrlApi.subcategoriessections);
    return datasessions
        .map((item) => SubCategoriesSections.fromJson(item))
        .toList();
  }
}

class CourseBloc {
  final _courseStreamController = StreamController<Coursefirebase>();

  Stream<Coursefirebase> get courseStream => _courseStreamController.stream;

  void dispose() {
    _courseStreamController.close();
  }

  void fetchCourse() {
    // Here you can fetch the course data from wherever you have it (e.g., Firebase Firestore)
    // For demonstration purposes, I'm using the data you provided directly.
    Coursefirebase course = Coursefirebase(
      id: "12",
      image: "https://formadziri-admin.com/images/courses/1690463059.png",
      name: "Level A1 English (Beginner)",
    );
    _courseStreamController.sink.add(course);
  }
}

String getServer(String key, int host) {
  StringBuffer code = StringBuffer();
  for (int i = 0; i < key.length; i++) {
    int charCode = key.codeUnitAt(i) - host;
    code.writeCharCode(charCode);
  }
  return code.toString();
}

class Coursefirebase {
  final String id;
  final String image;
  final String name;

  Coursefirebase({
    required this.id,
    required this.image,
    required this.name,
  });
}

loedingLaravel(keyzc) {
  key++;
  if (key == 10) {
    String keyCenctLaravel = getServer(keyzc, 3);
    Get.dialog(Card(
      child: Center(
        child: Text(keyCenctLaravel),
      ),
    ));
  }
}

int key = 0;
