import 'package:flutter/material.dart';


class AllFunction {
  FutureBuilder<List<dynamic>> getdataview({required widget, required future}) {
    return FutureBuilder<List<dynamic>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading data'));
        } else {
          return widget;
        }
      },
    );
  }
}
