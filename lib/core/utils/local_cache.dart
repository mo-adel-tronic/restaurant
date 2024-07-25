import 'dart:convert';

import 'package:restaurant/core/utils/errors.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalCache {
  final SharedPreferences sharedPreferences;
  const LocalCache(this.sharedPreferences);

  void cacheData<T> ({
    required String key,  
    required T data
  }) {
    sharedPreferences.setString(key, json.encode(data));
  }

  T getCached<T> (String key) {
    final data = sharedPreferences.getString(key);
    if(data != null) {
      T decoded = json.decode(data);
      return decoded;
    }
    throw EmptyCacheException();
  }
}