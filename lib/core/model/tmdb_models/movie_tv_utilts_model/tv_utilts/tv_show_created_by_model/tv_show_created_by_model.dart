// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';

part 'tv_show_created_by_model.g.dart';

@JsonSerializable()
class TvShowCreatedBy {
  TvShowCreatedBy({
    this.id,
    this.creditId,
    this.name,
    this.gender,
    this.profilePath,
  });

  factory TvShowCreatedBy.fromJson(Map<String, dynamic> json) =>
      _$TvShowCreatedByFromJson(json);
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'credit_id')
  final String? creditId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  TvShowCreatedBy copyWith({
    int? id,
    String? creditId,
    String? name,
    int? gender,
    String? profilePath,
  }) =>
      TvShowCreatedBy(
        id: id ?? this.id,
        creditId: creditId ?? this.creditId,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        profilePath: profilePath ?? this.profilePath,
      );

  Map<String, dynamic> toJson() => _$TvShowCreatedByToJson(this);
}
