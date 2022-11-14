import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => new _TestState();
}

class _TestState extends State<Test> {
  double rating = 3.5;
  int starCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Star Rating"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 50.0,
              bottom: 50.0,
            ),
            child: StarRating(
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
          Text(
            "Your rating is: $rating",
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
