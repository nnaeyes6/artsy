// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';

class HomeModel {
  late String? imageUrl;
  HomeModel({
    this.imageUrl,
  });
}

List<HomeModel> dataList = [
  HomeModel(imageUrl: "assets/images/girl-with-flower.png"),
  HomeModel(imageUrl: "assets/images/egyprtian_bool1.png"),
  HomeModel(imageUrl: "assets/images/we-are-there-yet.png"),
  HomeModel(imageUrl: "assets/images/pretty.png"),
  HomeModel(imageUrl: 'assets/images/road2egypt.png'),
];

