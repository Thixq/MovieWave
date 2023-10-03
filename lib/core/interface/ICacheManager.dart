abstract class ICacheManager<T> {
  void addItem({required MapEntry<String, dynamic> item});
  void removeItem({required String key});
  T getItem({required String key});
  List<T> getAllItem();
  void addAllItem({required List<MapEntry<String, dynamic>> items});
}
