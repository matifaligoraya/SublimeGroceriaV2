typedef JsonFactory<T> = T Function(Map<String, dynamic>);

class JsonTypeAdapter {
  static final Map<Type, JsonFactory<dynamic>> _factories = {};

  // Register a factory for a type
  static void registerFactory<T>(JsonFactory<T> factory) {
    _factories[T] = factory;
  }

  // Get the factory for a type
  static JsonFactory<T>? getFactory<T>() {
    return _factories[T] as JsonFactory<T>?;
  }
}
