class TransportSubtype {
  TransportSubtype({
    this.color,
    this.code,
    this.title,
  });

  TransportSubtype.fromJson(dynamic json) {
    color = json['color'];
    code = json['code'];
    title = json['title'];
  }
  dynamic color;
  dynamic code;
  dynamic title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = color;
    map['code'] = code;
    map['title'] = title;
    return map;
  }
}
