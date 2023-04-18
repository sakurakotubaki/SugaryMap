import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class CreateUserClass {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  final createdAt = Timestamp.fromDate(DateTime.now());

  /// [画像をアップロードするメソッド]
  Future<void> imageUpload() async {
    // imagePickerで画像を選択する
    final pickerFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickerFile == null) {
      return;
    }
    File file = File(pickerFile.path);
    try {
      final uid = auth.currentUser?.uid;
      const uploadName = 'image.png';
      final snapshot = storage.ref().child('image/$uid/$uploadName');
      // 画像をStorageにuploadする処理.
      final task = await snapshot.putFile(file);
      final imageUrl = await snapshot.storage
          .ref()
          .child('image/$uid/$uploadName')
          .getDownloadURL();
    } catch (e) {
      throw e.toString();
    }
  }

  /// [プロフィール情報を作成するメソッド]
  Future<void> addProfile(String name, String selfIntroduction) async {
    final uid = auth.currentUser?.uid;
    const uploadName = 'image.png';
    final imageRef = storage.ref().child('image/$uid/$uploadName');
    String imageUrl = await imageRef.getDownloadURL();

    /// [保存するデータ]
    Map<String, dynamic> data = {
      'name': name,
      'selfIntroduction': selfIntroduction,
      'imageUrl': imageUrl,
      'like': 0,
      'degree': '甘党',
      'createdAt': createdAt,
    };

    final _reference = db.collection('user').doc(uid);
    _reference.set(data);
  }
}
