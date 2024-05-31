import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Authenticationを使用するためにインポート

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          // AppBarにサインアウトボタンを追加
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              // サインアウト処理を実行
              await FirebaseAuth.instance.signOut();
              // サインアウト後はログイン画面に戻るなどの処理を行う
              // 例：Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to HomeScreen!'),
      ),
    );
  }
}
