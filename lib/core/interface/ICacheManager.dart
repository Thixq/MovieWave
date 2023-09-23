abstract class ICacheManager {
  void addItem({required String key, required Object item});
  void removeItem({required String key});
  void getItem({required String key});
}
