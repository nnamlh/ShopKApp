import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
            primarySwatch: Colors.blue, primaryColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('TEST FLUUTER'),
          ),
          backgroundColor: Colors.white,
          body: buildHomePage(),
        ));
  }

  Widget builParodaDetail(IconData icon, String title, String content) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 100.0,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 1.0),
              left: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 1.0),
              right: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 1.0),
              top: BorderSide(
                  color: Colors.amberAccent,
                  style: BorderStyle.solid,
                  width: 1.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.amberAccent,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.black26, fontSize: 14.0),
          ),
          Text(
            content,
            style: TextStyle(color: Colors.black26, fontSize: 14.0),
          )
        ],
      ),
    );
  }

  Widget buildHomePage() {
    final titleText = Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Strawberry Paroda',
        style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5),
      ),
    );

    final contentText = Container(
      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.blue,
          letterSpacing: 0.5,
        ),
      ),
    );

    final starList = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ],
    );

    final titleReviewText = Center(
      child: Text(
        '170 Reviews',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );

    final rowStar = Container(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[starList, titleReviewText],
      ),
    );

    final detailView = Container(
      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          builParodaDetail(Icons.account_balance_wallet, 'PREP', '25 min'),
          builParodaDetail(Icons.vibration, 'PREP', '25 min'),
          builParodaDetail(Icons.access_alarms, 'PREP', '25 min')
        ],
      ),
    );

    final imageShow = Container(
      padding: EdgeInsets.all(10.0),
      child: Image.asset('images/pavlova.jpg',
        fit: BoxFit.contain,
        height: 120.0,
      )
    );

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[titleText, contentText, rowStar, detailView, imageShow],
        ),
      ),
    );
  }
}
