import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',

      // コンテナのレイアウト
      //home: ContainerOperation(title: "containerOperation"),
      // カラムとロウの操作
      //home: ColumnsAndRowOperation(title: "columnAndRowOperation"),
      // alignmentの操作
      //home: Alignment(title: "alignment"),
      // 要素をできる限り拡大する
      home: Expand(title: "Expanded"),
    );
  }
}

class Expand extends StatelessWidget {
  const Expand({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.blue,
          )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              child: Container(
            color: Colors.yellow,
          )),
        ],
      ),
    );
  }
}

class Alignment extends StatelessWidget {
  const Alignment({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Row(
          // 要素の隙間が均等な余白を作成。両端の隙間は自動で作成。
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          // 両端の隙間を削除したバージョン
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //　両端の隙間も全て均等な余白
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          // 余白もコンテンツに含める
          //mainAxisSize: MainAxisSize.max,
          // 余白を削除する
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(color: Colors.blue, width: 50, height: 50),
            Container(color: Colors.red, width: 50, height: 50),
            Container(color: Colors.greenAccent, width: 50, height: 50),
            Container(color: Colors.teal, width: 50, height: 50),
          ],
        ),
      ),
    );
  }
}

class ColumnsAndRowOperation extends StatelessWidget {
  const ColumnsAndRowOperation({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.blue, width: 100, height: 100),
              Container(color: Colors.red, width: 100, height: 100),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.green, width: 100, height: 100),
              Container(color: Colors.orange, width: 100, height: 100),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerOperation extends StatelessWidget {
  const ContainerOperation({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 300,
          child: const Text("container"),
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
          transform: Matrix4.rotationZ(0.1),
        ),
      ),
    );
  }
}
