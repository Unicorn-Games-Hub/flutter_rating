library flutter_rating;

import 'package:flutter/material.dart';

/// FlutterRating is a widget that allows you to display a rating bar.

/// The [RatingChangeCallback] is used to notify the parent widget when the rating changes.
/// The [RatingChangeCallback] is optional.
/// The [onRatingChanged] callback is used to notify the parent widget when the rating changes.
/// The [onRatingChanged] callback is optional.
/// The [initialRating] is used to set the initial rating.
/// The [initialRating] is optional.
typedef void RatingChangeCallback(double rating);

/// [StarRating] is a widget that allows you to display a rating bar.
/// It is possible to set the number of stars, the size of the stars,
/// the color of the stars, the color of the background, the color of the
/// border, the border width, the padding between the stars, the initial
/// rating, the number of decimals, the callback function when the rating
/// changes, the direction of the stars (horizontal or vertical) and the
/// alignment of the stars.
/// The stars are displayed as [Icon] widgets.
/// The [StarRating] widget is based on the [RatingBar] widget.
class StarRating extends StatelessWidget {
  /// The [starCount] number of stars to display.
  /// The default value is 5.
  /// The value must be greater than 0.
  /// The value must be an integer.
  /// The value must be a finite number.
  final int starCount;

  /// The [rating] is the initial rating.
  /// The default value is 0.0.
  /// The value must be greater than or equal to 0.0.
  /// The value must be less than or equal to [starCount].
  /// The value must be a finite number.
  /// The value must be a double.
  /// The value must be a number.
  /// The value must be a non-null value.
  /// The value must be a non-nullable value.
  /// The value must be a non-null number.
  /// The value must be a non-nullable number.
  /// The value must be a non-null double.
  /// The value must be a non-nullable double.
  /// The value must be a non-null finite number.
  /// The value must be a non-nullable finite number.
  final double rating;

  /// The [RatingChangeCallback] is the callback function when the rating
  /// changes.
  final RatingChangeCallback? onRatingChanged;

  /// The [color] is the color of the stars.
  final Color color;

  /// The [borderColor] is the color of the border.
  final Color borderColor;

  /// The [size] is the size of the stars.
  final double? size;

  /// The [mainAxisAlignment] is the alignment of the stars.
  final MainAxisAlignment mainAxisAlignment;

  StarRating({
    this.starCount = 5,
    this.rating = 0.0,
    this.onRatingChanged,
    this.color = Colors.orange,
    this.borderColor = Colors.orange,
    this.size,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  /// The [buildStar] method is used to build a star.
  /// The [index] is the index of the star.
  /// The [index] is an integer.
  Widget buildStar(BuildContext context, int index) {
    /// The [Icon] widget is used to display a graphical icon.
    Icon icon;

    /// The [ratingStartSizeRelativeToScreen] is the size of the stars
    double ratingStarSizeRelativeToScreen =
        MediaQuery.of(context).size.width / starCount;

    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: borderColor,
        size: size ?? ratingStarSizeRelativeToScreen,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color,
        size: size ?? ratingStarSizeRelativeToScreen,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color,
        size: size ?? ratingStarSizeRelativeToScreen,
      );
    }
    return new InkResponse(
      highlightColor: Colors.transparent,
      radius: (size ?? ratingStarSizeRelativeToScreen) / 2,
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: new Container(
        height: (size ?? ratingStarSizeRelativeToScreen) * 1.5,
        child: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
      child: new Center(
        child: new Row(
          mainAxisAlignment: mainAxisAlignment,
          children: new List.generate(
            starCount,
            (index) => buildStar(context, index),
          ),
        ),
      ),
    );
  }
}
