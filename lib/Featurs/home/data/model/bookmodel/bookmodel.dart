import 'package:equatable/equatable.dart';

import 'volume_info.dart';

class Bookmodel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;

  const Bookmodel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
  });

  factory Bookmodel.fromJson(Map<String, dynamic> json) => Bookmodel(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: VolumeInfo.fromJson(json['volumeInfo'] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo.toJson(),
      };

  @override
  List<Object?> get props => [kind, id, etag, selfLink, volumeInfo];
}