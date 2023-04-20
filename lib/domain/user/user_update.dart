import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateUser {
  final String name;
  final String selfIntroduction;
  final String imageUrl;
  final int like;
  final String degree;
  final Timestamp updatedAt;

  UpdateUser({
    required this.name,
    required this.selfIntroduction,
    required this.imageUrl,
    required this.like,
    required this.degree,
    required this.updatedAt,
  });

  factory UpdateUser.fromDocument(DocumentSnapshot doc) {
    return UpdateUser(
      name: doc['name'] ?? '',
      selfIntroduction: doc['selfIntroduction'] ?? '',
      imageUrl: doc['imageUrl'] ?? '',
      like: doc['like'] ?? 0,
      degree: doc['degree'] ?? '',
      updatedAt: doc['updatedAt'] ?? Timestamp.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'selfIntroduction': selfIntroduction,
      'imageUrl': imageUrl,
      'like': like,
      'degree': degree,
      'updatedAt': updatedAt,
    };
  }
}
