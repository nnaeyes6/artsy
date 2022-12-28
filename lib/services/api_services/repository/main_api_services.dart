import 'dart:convert';
import 'package:artsy/core/constants/api_constants.dart';
import 'package:artsy/data/model/artsymodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';


class ArtsyApiServices {
  Future<List<ArtsyModel>> getArtsyArts() async {
    var response = await get(Uri.parse(ApiConstants.baseUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => ArtsyModel.fromJson(e))).toList();
    } else {
      throw Exception(response.statusCode);
    }
  }
}



final artsyProvider = Provider<ArtsyApiServices>((ref) => ArtsyApiServices());
