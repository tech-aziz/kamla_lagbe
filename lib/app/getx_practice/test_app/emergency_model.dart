// To parse this JSON data, do
//
//     final emergencyModel = emergencyModelFromJson(jsonString);

import 'dart:convert';

EmergencyModel emergencyModelFromJson(String str) => EmergencyModel.fromJson(json.decode(str));

String emergencyModelToJson(EmergencyModel data) => json.encode(data.toJson());

class EmergencyModel {
  List<EmergencyData>? data;
  EmergencyModelLinks? links;
  Meta? meta;
  bool? success;
  int? status;

  EmergencyModel({
    this.data,
    this.links,
    this.meta,
    this.success,
    this.status,
  });

  factory EmergencyModel.fromJson(Map<String, dynamic> json) => EmergencyModel(
    data: json["data"] == null ? [] : List<EmergencyData>.from(json["data"]!.map((x) => EmergencyData.fromJson(x))),
    links: json["links"] == null ? null : EmergencyModelLinks.fromJson(json["links"]),
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
    success: json["success"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "links": links?.toJson(),
    "meta": meta?.toJson(),
    "success": success,
    "status": status,
  };
}

class EmergencyData {
  int? id;
  String? name;
  String? thumbnailImage;
  bool? hasDiscount;
  String? strokedPrice;
  String? mainPrice;
  int? rating;
  int? sales;
  EmergencyDataLinks? links;

  EmergencyData({
    this.id,
    this.name,
    this.thumbnailImage,
    this.hasDiscount,
    this.strokedPrice,
    this.mainPrice,
    this.rating,
    this.sales,
    this.links,
  });

  factory EmergencyData.fromJson(Map<String, dynamic> json) => EmergencyData(
    id: json["id"],
    name: json["name"],
    thumbnailImage: json["thumbnail_image"],
    hasDiscount: json["has_discount"],
    strokedPrice: json["stroked_price"],
    mainPrice: json["main_price"],
    rating: json["rating"],
    sales: json["sales"],
    links: json["links"] == null ? null : EmergencyDataLinks.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "thumbnail_image": thumbnailImage,
    "has_discount": hasDiscount,
    "stroked_price": strokedPrice,
    "main_price": mainPrice,
    "rating": rating,
    "sales": sales,
    "links": links?.toJson(),
  };
}

class EmergencyDataLinks {
  String? details;

  EmergencyDataLinks({
    this.details,
  });

  factory EmergencyDataLinks.fromJson(Map<String, dynamic> json) => EmergencyDataLinks(
    details: json["details"],
  );

  Map<String, dynamic> toJson() => {
    "details": details,
  };
}

class EmergencyModelLinks {
  String? first;
  String? last;
  dynamic prev;
  String? next;

  EmergencyModelLinks({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory EmergencyModelLinks.fromJson(Map<String, dynamic> json) => EmergencyModelLinks(
    first: json["first"],
    last: json["last"],
    prev: json["prev"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "last": last,
    "prev": prev,
    "next": next,
  };
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currentPage: json["current_page"],
    from: json["from"],
    lastPage: json["last_page"],
    links: json["links"] == null ? [] : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
    path: json["path"],
    perPage: json["per_page"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "from": from,
    "last_page": lastPage,
    "links": links == null ? [] : List<dynamic>.from(links!.map((x) => x.toJson())),
    "path": path,
    "per_page": perPage,
    "to": to,
    "total": total,
  };
}

class Link {
  String? url;
  String? label;
  bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}
