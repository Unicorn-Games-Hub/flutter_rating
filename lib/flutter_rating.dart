library flutter_rating;
import 'package:flutter/material.dart';
typedef void RatingChangeCallback(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;
  final Color borderColor;
  final double size;
  StarRating({this.starCount=5, this.rating=.0, this.onRatingChanged, this.color, this.borderColor, this.size});
  
  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color:borderColor?? Theme.of(context).buttonColor,
        size: size??25.0,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
        size: size??25.0,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
        size: size??25.0,
      );
    }
    return new InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
      child: new Center(
        child: new Row(
        children: new List.generate(starCount, (index) => buildStar(context, index))
        ),
      ),
    );
  }
}