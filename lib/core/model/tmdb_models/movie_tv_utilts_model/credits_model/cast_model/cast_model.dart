// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'cast_model.g.dart';

@JsonSerializable()
class Cast {
  Cast({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.character,
    this.creditId,
    this.order,
  });

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @JsonKey(name: 'character')
  final String? character;
  @JsonKey(name: 'credit_id')
  final String? creditId;
  @JsonKey(name: 'order')
  final int? order;

  Cast copyWith({
    bool? adult,
    int? gender,
    int? id,
    String? knownForDepartment,
    String? name,
    String? originalName,
    double? popularity,
    String? profilePath,
    String? character,
    String? creditId,
    int? order,
  }) =>
      Cast(
        adult: adult ?? this.adult,
        gender: gender ?? this.gender,
        id: id ?? this.id,
        knownForDepartment: knownForDepartment ?? this.knownForDepartment,
        name: name ?? this.name,
        originalName: originalName ?? this.originalName,
        popularity: popularity ?? this.popularity,
        profilePath: profilePath ?? this.profilePath,
        character: character ?? this.character,
        creditId: creditId ?? this.creditId,
        order: order ?? this.order,
      );

  Map<String, dynamic> toJson() => _$CastToJson(this);
}
