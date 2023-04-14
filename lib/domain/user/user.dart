import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sugary_map/domain/converter/timestamp_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,// ユーザーの名前
    required String selfIntroduction,// ユーザーの自己紹介文
    required String agree,// ユーザーの称号
    required String imageUrl,// 画像のパス
    required int like,// いいねをもらった数
    @TimestampConverter() DateTime? createdAt,// 作成時刻
    @TimestampConverter() DateTime? updatedAt,// 更新時刻
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}