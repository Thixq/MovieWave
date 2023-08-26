abstract class IResponseManager<R, E> {
  IResponseManager(this.response, this.error);

  final R? response;
  final E? error;
}
