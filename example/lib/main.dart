import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> {
  double rating = 3.5;
  int starCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Star Rating"),
      ),
      body:
      new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(
              top: 50.0,
              bottom: 50.0,
            ),
            child: new StarRating(
              size: 25.0,
              rating: rating,
              color: Colors.orange,
              borderColor: Colors.grey,
              starCount: starCount,
              onRatingChanged: (rating) => setState(
                    () {
                      this.rating = rating;
                    },
                  ),
            ),
          ),
          new Text(
            "Your rating is: $rating",
            style: new TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
