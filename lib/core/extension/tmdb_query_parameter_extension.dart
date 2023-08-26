import 'package:tmdb_movie/core/enum/tmdb_query_parameter_enum.dart';

extension TmdbQueryUtils on TmdbQueryParameter {
  MapEntry<String, dynamic> parameter({
    int? page,
    String? imageLanguage,
    String? language,
    String? genres,
    String? query,
  }) {
    switch (this) {
      case TmdbQueryParameter.ATR:
        return const MapEntry(
          'append_to_response',
          'images,videos,credits,similar',
        );
      case TmdbQueryParameter.PAGE:
        return MapEntry('page', '$page');
      case TmdbQueryParameter.IMGLANG:
        return MapEntry('include_image_language', '$imageLanguage,null');
      case TmdbQueryParameter.LANG:
        return MapEntry('language', '$language');
      case TmdbQueryParameter.GENRES:
        return MapEntry('with_genres', '$genres');
      case TmdbQueryParameter.QUERY:
        return MapEntry('query', '$query');
    }
  }
}
