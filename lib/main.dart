import 'dart:math';
import 'package:flutter/material.dart';

const kColorPurple = Color(0xFF83337EC);
const kColorPink = Color(0xFFFF006F);
const kColorIndicatorBegin = kColorPink;
const kColorIndicatorEnd = kColorPurple;
const kColorTitle = Color(0xFF616161);
const kColorText = Color(0xFF9E9E9E);
const kElevation = 4.0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Battery Optimizer',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: kColorTitle),
        ),
        backgroundColor: Colors.white,
      ),
      home: BatteryOptimizerPage(),
    );
  }
}

// ページ全体
class BatteryOptimizerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Battery Optimizer'),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            OptimizerButtons(),
            OptimizeNow(),
          ],
        ),
      ),
    );
  }
}

// ボタン一覧の一つのボタンを生成するためのクラス
class _OptimizerButton extends StatelessWidget {
  final String text;

  const _OptimizerButton({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.white,
        elevation: kElevation,
        height: 24,
        padding: EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: kColorTitle, fontSize: 12),
        ));
  }
}

// ボタン一覧
class OptimizerButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(width: 16),
                _OptimizerButton(text: 'Battery Optimizer'),
                SizedBox(width: 16),
                _OptimizerButton(text: 'Connection Optimizer'),
                SizedBox(
                  width: 16,
                ),
                _OptimizerButton(text: 'Memory Optimizer'),
                SizedBox(width: 16),
                _OptimizerButton(text: 'Storage Optimizer'),
                SizedBox(width: 16),
              ],
            )));
  }
}

// 最後のボタン
class OptimizeNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: RaisedButton(
            color: kColorPurple,
            padding: EdgeInsets.symmetric(horizontal: 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: () {},
            child:
                Text('Optimize Now', style: TextStyle(color: Colors.white))));
  }
}
