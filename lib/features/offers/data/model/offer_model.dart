class OfferModel {
  final int id;
  final String nameENG;
  final String nameAR;
  final String descriptionEnG;
  final String descriptionAR;
  final String image;
  final int price;
  final String createdAt;
  final String updatedAt;
  final int isDeleted;
  final List<ItemData> items;

  OfferModel({
    required this.id,
    required this.nameAR,
    required this.nameENG,
    required this.descriptionEnG,
    required this.descriptionAR,
    required this.image,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.items,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
    id: json['id'] as int,
    nameAR: json['name_ar'] as String,
    nameENG: json['name_en'] as String,
    descriptionEnG: json['description_en'] as String,
    descriptionAR: json['description_ar'] as String,
    image: json['image'] as String,
    price: json['price'] as int,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    isDeleted: json['is_deleted'] as int,
    items:
    (json['items'] as List).map((e) => ItemData.fromJson(e)).toList(),
  );
}

class ItemData {
  final int id;
  final String nameENG;
  final String nameAR;
  final String descriptionEnG;
  final String descriptionAR;
  final int offerId;
  final String createdAt;
  final String updatedAt;

  ItemData({
    required this.id,
    required this.nameAR,
    required this.nameENG,
    required this.descriptionEnG,
    required this.descriptionAR,
    required this.offerId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ItemData.fromJson(Map<String, dynamic> json) => ItemData(
    id: json['id'] as int,
    nameAR: json['name_ar'] as String,
    nameENG: json['name_en'] as String,
    descriptionEnG: json['description_en'] as String,
    offerId: json['offer_id'] as int,
    descriptionAR: json['description_ar'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}
