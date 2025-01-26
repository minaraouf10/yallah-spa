import 'package:yal_spa/core/config/utils/custom_state.dart';

class ArticlesModel {
  final int id;
  final String titleEn;
  final String titleAr;
  final String contentAr;
  final String contentEn;
  final String createdAt;
  final int blogId;
  final String image;

  ArticlesModel({
    required this.id,
    required this.titleEn,
    required this.titleAr,
    required this.contentEn,
    required this.contentAr,
    required this.createdAt,
    required this.blogId,
    required this.image,
  });

  factory ArticlesModel.fromJson(Json json) => ArticlesModel(
        id: json['id'] as int,
        titleEn: json['title_en'] as String,
        titleAr: json['title_ar'] as String,
        contentEn: json['content_en'] as String,
        contentAr: json['content_ar'] as String,
        createdAt: json['created_at'] as String,
        blogId: json['blog_id'] as int,
        image: json['image'] as String,
      );
}
