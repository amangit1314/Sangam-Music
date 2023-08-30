import 'dart:convert';

class SangamMusicPolicyModel {
  final String id;
  final String url;
  final String? acceptanceDate;
  final String createdDate;
  final String type;
  final String version;

  SangamMusicPolicyModel({
    required this.id,
    required this.url,
    required this.acceptanceDate,
    required this.createdDate,
    required this.type,
    required this.version,
  });

  SangamMusicPolicyModel copyWith({
    String? id,
    String? url,
    String? acceptanceDate,
    String? createdDate,
    String? type,
    String? version,
  }) {
    return SangamMusicPolicyModel(
      id: id ?? this.id,
      url: url ?? this.url,
      acceptanceDate: acceptanceDate ?? this.acceptanceDate,
      createdDate: createdDate ?? this.createdDate,
      type: type ?? this.type,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'acceptanceDate': acceptanceDate,
      'createdDate': createdDate,
      'type': type,
      'version': version,
    };
  }

  factory SangamMusicPolicyModel.fromMap(Map<String, dynamic> map) {
    return SangamMusicPolicyModel(
      id: map['id'] ?? '',
      url: map['url'] ?? '',
      acceptanceDate: map['acceptanceDate'],
      createdDate: map['createdDate'] ?? '',
      type: map['type'] ?? '',
      version: map['version'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SangamMusicPolicyModel.fromJson(String source) =>
      SangamMusicPolicyModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SangamMusicPolicyModel(id: $id, url: $url, acceptanceDate: $acceptanceDate, createdDate: $createdDate, type: $type, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SangamMusicPolicyModel &&
        other.id == id &&
        other.url == url &&
        other.acceptanceDate == acceptanceDate &&
        other.createdDate == createdDate &&
        other.type == type &&
        other.version == version;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        url.hashCode ^
        acceptanceDate.hashCode ^
        createdDate.hashCode ^
        type.hashCode ^
        version.hashCode;
  }
}
