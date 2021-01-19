import 'package:flutter/material.dart';
import 'card_setting/vertical_card_pager.dart';
import 'package:portfolio/ui/home.dart';
import 'package:portfolio/utils/screen/screen_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'Flutter Demo',
//      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColorBrightness: Brightness.light,
          accentColorBrightness: Brightness.light),
      home: MyAppChild(),
    );
  }
}

class MyAppChild extends StatefulWidget {
  @override
  _MyAppChildState createState() => _MyAppChildState();
}

class _MyAppChildState extends State<MyAppChild> {
  @override
  Widget build(BuildContext context) {
    // instantiating ScreenUtil singleton instance, as this will be used throughout
    // the app to get screen size and other stuff
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return HomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final List<String> titles = [
  "cloud",
  "android",
  "jsp",
  "flutter",
  "ai",
  "javascript",
];

final List<Widget> images = [
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/cloud.png",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/android.png",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/jsp.png",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/flutter.png",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/ai.png",
      fit: BoxFit.cover,
    ),
  ),
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset(
      "images/javascript.png",
      fit: BoxFit.cover,
    ),
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      fontFamily: "Bevan",
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  initialPage: 0,
                  onPageChanged: (page) {
                    // print(page);
                  },
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
