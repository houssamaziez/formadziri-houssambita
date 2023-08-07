// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:formadziri/home_comp/ForData.dart';
import 'package:formadziri/home_comp/titles.dart';

import '../BDD/Model/home.dart';

class Cat2 extends StatelessWidget {
  const Cat2({
    Key? key,
    required this.data,
  }) : super(key: key);

  final SubCategoriesSections data;

  @override
  Widget build(BuildContext context) {
    print(data.category!.subCategories![0].course!);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitle(
          title: data.title!.toString(),
        ),
        data.category!.subCategories!.isEmpty
            ? Container()
            : Fordata(
                datacoursList: data.category!.subCategories![0].course!,
                title: data.category!.name!),
      ],
    );
  }
}
