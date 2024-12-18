class HomeModel {
  final int id;
  final String nameENG;
  final String nameAR;
  final String descriptionEnG;
  final String descriptionAR;
  final String image;
  final List<ProductData> products;

  HomeModel({
    required this.id,
    required this.nameAR,
    required this.nameENG,
    required this.descriptionEnG,
    required this.descriptionAR,
    required this.image,
    required this.products,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        id: json['id'] as int,
        nameAR: json['name_ar'] as String,
        nameENG: json['name_en'] as String,
        descriptionEnG: json['description_en'] as String,
        descriptionAR: json['description_ar'] as String,
        image: json['image'] as String,
        products: (json['products'] as List)
            .map((e) => ProductData.fromJson(e))
            .toList(),
      );

  // {
  //   id = json['id'];
  //   nameAR = json['name_ar'];
  //   nameENG = json['name_en'];
  //   descriptionEnG = json['description_en'];
  //   descriptionAR = json['description_ar'];
  //   image = json['image'];
  //   products = (json['products'] as List).map((e) => ProductData.fromJson(e)).toList();
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name_ar'] = nameAR;
    data['name_en'] = nameENG;
    data['description_ar'] = descriptionAR;
    data['description_en'] = descriptionEnG;
    data['image'] = image;
    return data;
  }
}

class ProductData {
  final int id;
  final String nameENG;
  final String nameAR;
  final String descriptionEnG;
  final String descriptionAR;
  final String classs;
  final String binfites;
  final String serviceNameAR;
  final String serviceNameEN;
  final String target;
  final List type;
  final List time;
  final List frequency;
  final List gallery;

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
    required this.target,
    required this.type,
    required this.time,
    required this.frequency,
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
        type: (json['type'] as List).map((e) => TypeData.fromJson(e)).toList(),
        time: (json['time'] as List).map((e) => TimeData.fromJson(e)).toList(),
        frequency: (json['frequency'] as List)
            .map((e) => FrequencyData.fromJson(e))
            .toList(),
        gallery: (json['gallery'] as List)
            .map((e) => GalleryData.fromJson(e))
            .toList(),
      );
// {
//    id = json['id'];
//    nameAR = json['name_ar'];
//    nameENG = json['name_en'];
//    descriptionEnG = json['description_en'];
//    descriptionAR = json['description_ar'];
//    classs = json['class'];
//    binfites = json['binfites'];
//    target = json['target'];
//    serviceNameAR = json['service_name_ar'];
//    serviceNameEN = json['service_name_en'];
//    type = (json['type'] as List).map((e) => TypeData.fromJson(e)).toList();
//    time = (json['time'] as List).map((e) => TimeData.fromJson(e)).toList();
//    frequency = (json['frequency'] as List)
//        .map((e) => FrequencyData.fromJson(e))
//        .toList();
//    gallery =
//        (json['gallery'] as List).map((e) => GalleryData.fromJson(e)).toList();
//  }
}

class TypeData {
  final int typeId;
  final String typeName;
  final String typeDescription;

  TypeData({
    required this.typeId,
    required this.typeName,
    required this.typeDescription,
  });

  factory TypeData.fromJson(Map<String, dynamic> json) => TypeData(
        typeId: json['id'] as int,
        typeName: json['name'] as String,
        typeDescription: json['description'] as String,
      );
// {
//   typeId = json['id'];
//   typeName = json['name'];
//   typeDescription = json['description'];
// }
}

class TimeData {
  final int timeId;
  final String timeName;
  final String timePrice;

  TimeData({
    required this.timeId,
    required this.timeName,
    required this.timePrice,
  });

  factory TimeData.fromJson(Map<String, dynamic> json) => TimeData(
        timeId: json['id'] as int,
        timeName: json['name'] as String,
        timePrice: json['price'] as String,
      );
// {
//   timeId = json['id'];
//   timeName = json['name'];
//   timePrice = json['price'];
// }
}

class FrequencyData {
  final int frequencyId;
  final String frequencyName;
  final String frequencyPrice;
  final String frequencyDuration;
  final String frequencyCountOfSeason;

  FrequencyData({
    required this.frequencyId,
    required this.frequencyName,
    required this.frequencyPrice,
    required this.frequencyDuration,
    required this.frequencyCountOfSeason,
  });

  factory FrequencyData.fromJson(Map<String, dynamic> json) => FrequencyData(
        frequencyId: json['id'] as int,
        frequencyName: json['name'] as String,
        frequencyPrice: json['price'] as String,
        frequencyDuration: json['duration'] as String,
        frequencyCountOfSeason: json['count_of_seasson'] as String,
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
// {
//   galleryId = json['id'];
//   galleryURL = json['url'];
// }
}
