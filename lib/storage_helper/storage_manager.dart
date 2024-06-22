

import 'package:get_storage/get_storage.dart';

class StorageManager {

  static final _box = GetStorage();

  static void setValue(bool isShown){
     _box.write("value", isShown);
  }
  static bool getValue(){
    return _box.read("value") ?? false;
  }

}
