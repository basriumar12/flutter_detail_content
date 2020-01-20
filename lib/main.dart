import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset(
        'assets/images/logo.png',
        width: 90.0,
      ),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Apple',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );

    Widget descriptinSection = Container(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry '
        's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled '
        'it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
        textAlign: TextAlign.justify,
      ),
    );

    Widget rateSection = Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
        ],
      ),
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[rateSection, Text('100 Reviews')],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark, "Text ", "20 Menit"),
        _buildMenuSection(Icons.timer, "Cook ", "29 Menit"),
        _buildMenuSection(Icons.timer, "FastFood ", "5 - 20 "),
        _buildMenuSection(Icons.timer, "FastFood ", "5 - 20 "),
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          title: Text(
            'Apple',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            imageSection,
            titleSection,
            descriptinSection,
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            SizedBox(height: 20.0),
            menuSection
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(String text, double textSize, double paddingTop) {
  return Container(
      padding: EdgeInsets.only(top: paddingTop),
      child: Text(
        text,
        style: TextStyle(fontSize: textSize),
      ));
}

Widget _buildMenuSection(IconData iconData, String title, String timeStamp) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timeStamp, 12, 12)
    ],
  );
}
