class FavoriteModel {
  final int id;
  final int clientId;
  final int productId;
  final String createdAt;
  final String updatedAt;
  final ProductData products;

  FavoriteModel({
    required this.id,
    required this.clientId,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
    required this.products,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => FavoriteModel(
    id: json['id'] as int,
    clientId: json['client_id'] as int,
    productId: json['product_id'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    products: ProductData.fromJson(json['product'])
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['client_id'] = clientId;
    data['product_id'] = productId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class ProductData {
  final int id;
  final String nameENG;
  final String nameAR;
  final String descriptionEnG;
  final String descriptionAR;
  final String binfites;
  final String classs;
  final String price;
  final String duration;
  final int serviceId;
  final String serviceNameAR;
  final String serviceNameEN;
  final String createdAt;
  final String updatedAt;
  final bool isFav;
  final String target;
  final int isDeleted;
  final List <GalleryData>gallery;

  ProductData({
    required this.id,
    required this.nameAR,
    required this.nameENG,
    required this.descriptionEnG,
    required this.descriptionAR,
    required this.classs,
    required this.binfites,
    required this.serviceNameAR,
    required this.serviceNameEN,
    required this.isDeleted,
    required this.isFav,
    required this.target,
    required this.updatedAt,
    required this.createdAt,
    required this.price,
    required this.duration,
    required this.serviceId,
    required this.gallery,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
    id: json['id'] as int,
    nameAR: json['name_ar'] as String,
    nameENG: json['name_en'] as String,
    descriptionEnG: json['description_en'] as String,
    descriptionAR: json['description_ar'] as String,
    classs: json['class'] as String,
    binfites: json['binfites'] as String,
    serviceNameAR: json['service_name_ar'] as String,
    serviceNameEN: json['service_name_en'] as String,
    target: json['target'] as String,
    price: json['price'] as String,
    createdAt: json['created_at'] as String,
    duration:json['duration'] as  String,
    isDeleted: json['is_deleted'] as  int,
    isFav: json['is_fav'] as bool,
    serviceId: json['service_id'] as int,
    updatedAt: json['updated_at'] as String,
    gallery: (json['gallery'] as List)
        .map((e) => GalleryData.fromJson(e))
        .toList(),
  );
}

class GalleryData {
  final int galleryId;
  final String galleryURL;

  GalleryData({
    required this.galleryId,
    required this.galleryURL,
  });

  factory GalleryData.fromJson(Map<String, dynamic> json) => GalleryData(
    galleryId: json['id'] as int,
    galleryURL: json['url'] as String,
  );
}