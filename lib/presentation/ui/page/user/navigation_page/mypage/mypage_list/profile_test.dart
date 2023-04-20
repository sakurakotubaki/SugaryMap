import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FutureProviderで単一のドキュメントを取得するコード.
// final getProfileProvider = FutureProvider((ref) async {
//   final auth = FirebaseAuth.instance;
//   final id = auth.currentUser?.uid;
//   final docRef = FirebaseFirestore.instance.collection('user');
//   final fetch = await docRef.doc(id).get();
//   return fetch;
// });

/// Todo: リアルタイムログインしているユーザーのプロフィールのデータを更新するプロバイダー
final snapshotProvider = StreamProvider((ref) {
  final auth = FirebaseAuth.instance;
  final id = auth.currentUser?.uid;
  final docRef = FirebaseFirestore.instance.collection('user');
  final snap = docRef.doc(id).snapshots();
  return snap;
});

class ProfileTest extends ConsumerWidget {
  const ProfileTest({Key? key}) : super(key: key);

  static const rootName = 'profileTest';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue config = ref.watch(snapshotProvider);
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'snapshot',
        style: TextStyle(color: Colors.white),
      )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: config.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => Text('Error: $err'),
          data: (config) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50, //丸のサイズを調整.
                    backgroundColor: Colors.grey, // 画像が非表示の時の色を設定.
                    backgroundImage: config != null
                        ? NetworkImage(config['imageUrl'])
                        : null, // imageドキュメントを取得, nullだったらグレーの丸を表示
                  ),
                  const SizedBox(width: 20),
                  config != null
                      ? Text(config['name'])
                      : const Text(
                          'プロフィールが登録されてません'), // nameドキュメントを取得, nullだったら「登録されていません」のテキストを表示
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
