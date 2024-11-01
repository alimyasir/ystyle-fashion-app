import 'package:get_storage/get_storage.dart';

class LocalStorage{
 static final GetStorage _storage = GetStorage();

 Future<void> init() async {
   await GetStorage.init();
 }
}