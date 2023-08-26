import 'package:tmdb_movie/core/enum/request_type_enum.dart';

extension RequestTypeExtension on RequestType {
  String get rawValue {
    switch (this) {
      case RequestType.GET:
        return 'get';
      case RequestType.POST:
        return 'post';
      case RequestType.DELETE:
        return 'delete';
      case RequestType.PUT:
        return 'put';
    }
  }
}
