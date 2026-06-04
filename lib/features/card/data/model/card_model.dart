import 'package:yal_spa/core/config/utils/custom_state.dart';

class CardModel{
  final int id;
  final int clintId;
  final List<ItemCard> item;

  CardModel({
    required this.id,
    required this.clintId,
    required this.item,
  });

  factory CardModel.fromJson(Json json) => CardModel(
    id: json['id'] as int ?? 0,
    clintId: json['client_id'] as int ?? 0,
    item: (json['items'] as List?)
        ?.map((e) => ItemCard.fromJson(e as Json))
        .toList() ??
        [],
  );
}

class ItemCard {
  final int itemId;
  final int cardId;
  final String type;
  final int productId;
  final int quantity;
  final String orderDate;
  final String locationDescription;
  final int districtId;
  final int city_id;
  final itemProduct product;

  ItemCard({
    required this.itemId,
    required this.cardId,
    required this.type,
    required this.productId,
    required this.quantity,
    required this.orderDate,
    required this.districtId,
    required this.city_id,
    required this.product,
    required this.locationDescription,
  });

  factory ItemCard.fromJson(Json json) => ItemCard(
    itemId: json['id'] as int ?? 0,
    cardId: json['cart_id'] as int ?? 0,
    type: json['type'] as String ?? '',
    productId: json['product_id'] as int ?? 0,
    quantity: json['quantity'] as int ?? 0,
    orderDate: json['orderDate'] as String ?? '',
    districtId: json['district_id'] as int ?? 0,
    city_id: json['city_id'] as int ?? 0,
    locationDescription: json['location_descrption'] as String ?? '',
    product: itemProduct.fromJson(json['product'] as Json),
  );
}

class itemProduct {
  final int productId;
  final String nameAR;
  final String nameEN;
  final String descriptionAR;
  final String descriptionEN;
  final String image;
  final int  price;
  final int isDeleted;

  itemProduct({
    required this.productId,
    required this.nameAR,
    required this.nameEN,
    required this.descriptionAR,
    required this.descriptionEN,
    required this.image,
    required this.price,
    required this.isDeleted,
  });

  factory itemProduct.fromJson(Json json) => itemProduct(
    productId: json['id'] as int ?? 0,
    nameAR: json['name_ar'] as String ?? '',
    nameEN: json['name_en'] as String ?? '',
    descriptionAR: json['description_ar'] as String ?? '',
    descriptionEN: json['description_en'] as String ?? '',
    image: json['image'] as String ?? '',
    price: json['price'] as int ?? 0,
    isDeleted: json['is_deleted'] as int ?? 0,
  );
}