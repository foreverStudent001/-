import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import '../../../pages/data/firebase_ref/references.dart';


class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef =
          firebaseStorage.child("test").child('${imgName.toLowerCase()}.png');
      var imgUrl = await urlRef.getDownloadURL();

      return imgUrl;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
