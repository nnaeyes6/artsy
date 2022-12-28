// To parse this JSON data, do
//
//     final artsyModel = artsyModelFromJson(jsonString);

import 'dart:convert';

ArtsyModel artsyModelFromJson(String str) => ArtsyModel.fromJson(json.decode(str));

String artsyModelToJson(ArtsyModel data) => json.encode(data.toJson());






class ArtsyModel {
  int? id;
  String? apiModel;
  String? apiLink;
  String? title;
  bool? isFeatured;
  String? shortDescription;
  String? webUrl;
  String? imageUrl;
  String? status;
  String? aicStartAt;
  String? aicEndAt;
  int? galleryId;
  String? galleryTitle;
  List<int>? artworkIds;
  List<String>? artworkTitles;
  List<int>? artistIds;
  List<dynamic>? siteIds;
  dynamic imageId;
  List<dynamic>? altImageIds;
  List<dynamic>? documentIds;
  String? suggestAutocompleteBoosted;
  String? sourceUpdatedAt;
  String? updatedAt;
  String? timestamp;

  ArtsyModel({
    this.id,
    this.apiModel,
    this.apiLink,
    this.title,
    this.isFeatured,
    this.shortDescription,
    this.webUrl,
    this.imageUrl,
    this.status,
    this.aicStartAt,
    this.aicEndAt,
    this.galleryId,
    this.galleryTitle,
    this.artworkIds,
    this.artworkTitles,
    this.artistIds,
    this.siteIds,
    this.imageId,
    this.altImageIds,
    this.documentIds,
    this.suggestAutocompleteBoosted,
    this.sourceUpdatedAt,
    this.updatedAt,
    this.timestamp,
  });

  ArtsyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    apiModel = json['api_model'] as String?;
    apiLink = json['api_link'] as String?;
    title = json['title'] as String?;
    isFeatured = json['is_featured'] as bool?;
    shortDescription = json['short_description'] as String?;
    webUrl = json['web_url'] as String?;
    imageUrl = json['image_url'] as String?;
    status = json['status'] as String?;
    aicStartAt = json['aic_start_at'] as String?;
    aicEndAt = json['aic_end_at'] as String?;
    galleryId = json['gallery_id'] as int?;
    galleryTitle = json['gallery_title'] as String?;
    artworkIds = (json['artwork_ids'] as List?)?.map((dynamic e) => e as int).toList();
    artworkTitles = (json['artwork_titles'] as List?)?.map((dynamic e) => e as String).toList();
    artistIds = (json['artist_ids'] as List?)?.map((dynamic e) => e as int).toList();
    siteIds = json['site_ids'] as List?;
    imageId = json['image_id'];
    altImageIds = json['alt_image_ids'] as List?;
    documentIds = json['document_ids'] as List?;
    suggestAutocompleteBoosted = json['suggest_autocomplete_boosted'] as String?;
    sourceUpdatedAt = json['source_updated_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    timestamp = json['timestamp'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['api_model'] = apiModel;
    json['api_link'] = apiLink;
    json['title'] = title;
    json['is_featured'] = isFeatured;
    json['short_description'] = shortDescription;
    json['web_url'] = webUrl;
    json['image_url'] = imageUrl;
    json['status'] = status;
    json['aic_start_at'] = aicStartAt;
    json['aic_end_at'] = aicEndAt;
    json['gallery_id'] = galleryId;
    json['gallery_title'] = galleryTitle;
    json['artwork_ids'] = artworkIds;
    json['artwork_titles'] = artworkTitles;
    json['artist_ids'] = artistIds;
    json['site_ids'] = siteIds;
    json['image_id'] = imageId;
    json['alt_image_ids'] = altImageIds;
    json['document_ids'] = documentIds;
    json['suggest_autocomplete_boosted'] = suggestAutocompleteBoosted;
    json['source_updated_at'] = sourceUpdatedAt;
    json['updated_at'] = updatedAt;
    json['timestamp'] = timestamp;
    return json;
  }
}

 