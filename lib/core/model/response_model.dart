import 'package:tmdb_movie/core/interface/IResponseManager.dart';

class ResponseModel<R, E> extends IResponseManager<R, E> {
  ResponseModel(super.response, super.error);
}
