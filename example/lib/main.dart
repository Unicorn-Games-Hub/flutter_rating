import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  _TestState createState() => _TestState();
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: StarRating(
              size: 40.0,
              rating: rating,
              color: Colors.orange,
              borderColor: Colors.grey,
              allowHalfRating: true,
              starCount: starCount,
              onRatingChanged: (rating) => setState(() {
                this.rating = rating;
              }),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your rating is: $rating",
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
