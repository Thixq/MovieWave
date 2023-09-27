abstract class ICacheManager {
  void addItem({required MapEntry<String, dynamic> item});
  void removeItem({required String key});
  dynamic getItem({required String key});
  dynamic getAllItem();
  void addAllItem({required List<MapEntry<String, dynamic>> items});
}
