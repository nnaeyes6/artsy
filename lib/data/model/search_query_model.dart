import 'dart:convert';

SearchModel searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  int? score;
  String? apiModel;
  String? apiLink;
  int? id;
  String? title;
  String? timestamp;

  SearchModel({
    this.score,
    this.apiModel,
    this.apiLink,
    this.id,
    this.title,
    this.timestamp,
  });

  SearchModel.fromJson(Map<String, dynamic> json) {
    score = json['_score'] as int?;
    apiModel = json['api_model'] as String?;
    apiLink = json['api_link'] as String?;
    id = json['id'] as int?;
    title = json['title'] as String?;
    timestamp = json['timestamp'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['_score'] = score;
    json['api_model'] = apiModel;
    json['api_link'] = apiLink;
    json['id'] = id;
    json['title'] = title;
    json['timestamp'] = timestamp;
    return json;
  }
}

