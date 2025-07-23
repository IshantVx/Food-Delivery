class BarrelDetails {
  int? count;
  Null? next;
  Null? previous;
  List<Results>? results;

  BarrelDetails({this.count, this.next, this.previous, this.results});

  BarrelDetails.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
  BarrelCode? barrelCode;
  ItemInBoundDetail? itemInBoundDetail;
  CreatedBy? createdBy;
  int? modifiedBy;
  String? createdAt;
  String? updatedAt;
  String? actionType;
  String? volume;
  Null? remarks;

  Results({
    this.id,
    this.barrelCode,
    this.itemInBoundDetail,
    this.createdBy,
    this.modifiedBy,
    this.createdAt,
    this.updatedAt,
    this.actionType,
    this.volume,
    this.remarks,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    barrelCode = json['barrelCode'] != null
        ? new BarrelCode.fromJson(json['barrelCode'])
        : null;
    itemInBoundDetail = json['itemInBoundDetail'] != null
        ? new ItemInBoundDetail.fromJson(json['itemInBoundDetail'])
        : null;
    createdBy = json['createdBy'] != null
        ? new CreatedBy.fromJson(json['createdBy'])
        : null;
    modifiedBy = json['modifiedBy'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    actionType = json['actionType'];
    volume = json['volume'];
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.barrelCode != null) {
      data['barrelCode'] = this.barrelCode!.toJson();
    }
    if (this.itemInBoundDetail != null) {
      data['itemInBoundDetail'] = this.itemInBoundDetail!.toJson();
    }
    if (this.createdBy != null) {
      data['createdBy'] = this.createdBy!.toJson();
    }
    data['modifiedBy'] = this.modifiedBy;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['actionType'] = this.actionType;
    data['volume'] = this.volume;
    data['remarks'] = this.remarks;
    return data;
  }
}

class BarrelCode {
  int? id;
  BarrelDetail? barrelDetail;
  String? code;
  String? currentVolume;
  CurrentItem? currentItem;
  double? currentPercentageVolume;
  Location? location;

  BarrelCode({
    this.id,
    this.barrelDetail,
    this.code,
    this.currentVolume,
    this.currentItem,
    this.currentPercentageVolume,
    this.location,
  });

  BarrelCode.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    barrelDetail = json['barrelDetail'] != null
        ? new BarrelDetail.fromJson(json['barrelDetail'])
        : null;
    code = json['code'];
    currentVolume = json['currentVolume'];
    currentItem = json['currentItem'] != null
        ? new CurrentItem.fromJson(json['currentItem'])
        : null;
    currentPercentageVolume = json['currentPercentageVolume'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.barrelDetail != null) {
      data['barrelDetail'] = this.barrelDetail!.toJson();
    }
    data['code'] = this.code;
    data['currentVolume'] = this.currentVolume;
    if (this.currentItem != null) {
      data['currentItem'] = this.currentItem!.toJson();
    }
    data['currentPercentageVolume'] = this.currentPercentageVolume;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    return data;
  }
}

class BarrelDetail {
  int? id;
  String? capacity;
  int? barrelMain;

  BarrelDetail({this.id, this.capacity, this.barrelMain});

  BarrelDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    capacity = json['capacity'];
    barrelMain = json['barrelMain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['capacity'] = this.capacity;
    data['barrelMain'] = this.barrelMain;
    return data;
  }
}

class CurrentItem {
  int? id;
  String? name;
  Unit? unit;
  Unit? description;

  CurrentItem({this.id, this.name, this.unit, this.description});

  CurrentItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    unit = json['unit'] != null ? new Unit.fromJson(json['unit']) : null;
    description = json['description'] != null
        ? new Unit.fromJson(json['description'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.unit != null) {
      data['unit'] = this.unit!.toJson();
    }
    if (this.description != null) {
      data['description'] = this.description!.toJson();
    }
    return data;
  }
}

class Unit {
  int? id;
  String? name;

  Unit({this.id, this.name});

  Unit.fromJson(Map<String, dynamic> json) {
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

class Location {
  int? id;
  String? name;
  String? prefix;
  String? code;
  Null? parent;
  int? level;
  int? department;

  Location({
    this.id,
    this.name,
    this.prefix,
    this.code,
    this.parent,
    this.level,
    this.department,
  });

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    prefix = json['prefix'];
    code = json['code'];
    parent = json['parent'];
    level = json['level'];
    department = json['department'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['prefix'] = this.prefix;
    data['code'] = this.code;
    data['parent'] = this.parent;
    data['level'] = this.level;
    data['department'] = this.department;
    return data;
  }
}

class ItemInBoundDetail {
  BarrelItemMain? barrelItemMain;
  Unit? item;
  String? quantity;

  ItemInBoundDetail({this.barrelItemMain, this.item, this.quantity});

  ItemInBoundDetail.fromJson(Map<String, dynamic> json) {
    barrelItemMain = json['barrelItemMain'] != null
        ? new BarrelItemMain.fromJson(json['barrelItemMain'])
        : null;
    item = json['item'] != null ? new Unit.fromJson(json['item']) : null;
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.barrelItemMain != null) {
      data['barrelItemMain'] = this.barrelItemMain!.toJson();
    }
    if (this.item != null) {
      data['item'] = this.item!.toJson();
    }
    data['quantity'] = this.quantity;
    return data;
  }
}

class BarrelItemMain {
  int? id;
  String? inboundNo;
  String? batchNo;

  BarrelItemMain({this.id, this.inboundNo, this.batchNo});

  BarrelItemMain.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    inboundNo = json['inboundNo'];
    batchNo = json['batchNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['inboundNo'] = this.inboundNo;
    data['batchNo'] = this.batchNo;
    return data;
  }
}

class CreatedBy {
  int? id;
  String? userName;

  CreatedBy({this.id, this.userName});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    return data;
  }
}
