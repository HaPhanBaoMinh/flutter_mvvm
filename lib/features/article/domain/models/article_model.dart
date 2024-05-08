import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArticleModel {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  String? publishedDate;
  String? updated;
  String? section;
  String? subsection;
  @JsonKey(name: "nytdsection")
  String? nyTdSection;
  String? adxKeywords;
  String? column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<String>? geoFacet;
  // List<MediaModel>? media;
  int? etaId;

  ArticleModel({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nyTdSection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    // this.media,
    this.etaId,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);

  static List<ArticleModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ArticleModel.fromJson(json)).toList();
  }

  // Override the operator == to compare two ArticleModel objects
  @override
  bool operator == (Object other) {
    if (identical(this, other)) return true;
    if (other is ArticleModel) {
      return this.id == other.id;
    }
    if (other.runtimeType != runtimeType) return false;
    return false;
  }

}

