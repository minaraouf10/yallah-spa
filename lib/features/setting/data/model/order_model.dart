import '../../../../core/config/utils/custom_state.dart';

class OrderModel {
  final int id;
  final String total;
  final String totalAterCoupon;
  final String status;
  final String orderDate;
  final int isGift;
  final String locationName;
  final String locationDescrption;
  final int districtId;
  final int cityId;
  final int productId;
  final int quantity;
  final ProductOrder product;
  final CityOrder city;
  final DistrictOrder district;

  OrderModel({
    required this.id,
    required this.total,
    required this.totalAterCoupon,
    required this.status,
    required this.orderDate,
    required this.isGift,
    required this.locationName,
    required this.districtId,
    required this.cityId,
    required this.productId,
    required this.quantity,
    required this.product,
    required this.city,
    required this.district,
    required this.locationDescrption,
  });

  factory OrderModel.fromJson(Json json)=>OrderModel(
    id: json['id'] as int,
    total: json['total'] as String,
    totalAterCoupon: json['total_after_coupon'] as String,
    status: json['status'] as String,
    orderDate: json['orderDate'] as String,
    isGift: json['isGift'] as int,
    locationName: json['location_name'] as String,
    districtId: json['district_id'] as int,
    cityId: json['city_id'] as int,
    productId: json['product_id'] as int,
    quantity: json['quantity'] as int,
    locationDescrption: json['location_descrption'] as String,
    product: ProductOrder.fromJson(json['product'] as Json),
    city: CityOrder.fromJson(json['city'] as Json),
    district: DistrictOrder.fromJson(json['district'] as Json),
  );

}

class ProductOrder {
  final int productId;
  final String nameAR;
  final String nameEN;
  final String descriptionAR;
  final String descriptionEN;
  final String price;
  final String duration;
  final String binfits;
  final String target;
  final int serviceId;
  final int isDeleted;
  final List<ProductGallery> gallery;
  final String serviceNameAR;
  final String serviceNameEN;

  ProductOrder({
    required this.productId,
    required this.nameAR,
    required this.nameEN,
    required this.descriptionAR,
    required this.descriptionEN,
    required this.price,
    required this.duration,
    required this.binfits,
    required this.target,
    required this.serviceId,
    required this.isDeleted,
    required this.gallery,
    required this.serviceNameAR,
    required this.serviceNameEN,
  });
  factory ProductOrder.fromJson(Json json) => ProductOrder(
    productId: json['id'] as int,
    nameAR: json['name_ar'] as String? ?? '',
    nameEN: json['name_en'] as String? ?? '',
    descriptionAR: json['description_ar'] as String? ?? '',
    descriptionEN: json['description_en'] as String? ?? '',
    price: json['price']?.toString() ?? '0',
    duration: json['duration']?.toString() ?? '0',
    binfits: json['binfites']?.toString() ?? '',
    target: json['target']?.toString() ?? '',
    serviceId: json['service_id'] is int ? json['service_id'] as int : int.tryParse(json['service_id'].toString()) ?? 0,
    isDeleted: json['is_deleted'] is int ? json['is_deleted'] as int : int.tryParse(json['is_deleted'].toString()) ?? 0,
    gallery: (json['gallery'] != null && json['gallery'] is List)
        ? (json['gallery'] as List).map((e) => ProductGallery.fromJson(e as Json)).toList()
        : [],
    serviceNameAR: json['service_name_ar'] as String? ?? '',
    serviceNameEN: json['service_name_en'] as String? ?? '',
  );
}
class ProductGallery {
  final int galleryId;
  final String url;

  ProductGallery({
    required this.galleryId,
    required this.url,
  });
  factory ProductGallery.fromJson(Json json)=>ProductGallery(
    galleryId: json['id'] as int,
    url: json['url'] as String,
  );
}

class CityOrder {
  final int cityId;
  final String name;

  CityOrder({
    required this.cityId,
    required this.name,
  });
  factory CityOrder.fromJson(Json json)=>CityOrder(
    cityId: json['id'] as int,
    name: json['name'] as String,
  );
}

class DistrictOrder {
  final int districtId;
  final int cityId;
  final String name;

  DistrictOrder({
    required this.districtId,
    required this.name,
    required this.cityId,
  });
  factory DistrictOrder.fromJson(Json json)=>DistrictOrder(
    districtId: json['id'] as int,
    cityId: json['city_id'] as int,
    name: json['name'] as String,
  );
}