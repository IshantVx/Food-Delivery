class BarrelModel {
  int? count;
  Null? next;
  Null? previous;
  List<Results>? results;

  BarrelModel({this.count, this.next, this.previous, this.results});

  BarrelModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  Item? item;
  int? createdBy;
  int? modifiedBy;
  String? createdAt;
  String? updatedAt;
  String? batchNo;
  String? quantity;

  Results({
    this.id,
    this.item,
    this.createdBy,
    this.modifiedBy,
    this.createdAt,
    this.updatedAt,
    this.batchNo,
    this.quantity,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    item = json['item'] != null ? Item.fromJson(json['item']) : null;
    createdBy = json['createdBy'];
    modifiedBy = json['modifiedBy'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    batchNo = json['batchNo'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.item != null) {
      data['item'] = this.item!.toJson();
    }
    data['createdBy'] = this.createdBy;
    data['modifiedBy'] = this.modifiedBy;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['batchNo'] = this.batchNo;
    data['quantity'] = this.quantity;
    return data;
  }
}

class Item {
  int? id;
  String? name;

  Item({this.id, this.name});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
