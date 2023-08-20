// ignore_for_file: public_member_api_docs

abstract class INetworkModel<T, R extends Object?> {
  T fromJson(Map<String, dynamic> json, {R Function(Object? p1)? fromJsonT});
  Map<String, dynamic> toJson({Object Function(R? value)? toJsonT});
}
