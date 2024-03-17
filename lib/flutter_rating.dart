import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;
  final Color? borderColor;
  final double? size;
  final MainAxisAlignment mainAxisAlignment;
  final bool allowHalfRating;
  final IconData? filledIcon;
  final IconData? halfFilledIcon;
  final IconData? emptyIcon;

  StarRating({
    this.starCount = 5,
    this.rating = .0,
    this.onRatingChanged,
    this.color,
    this.borderColor,
    this.size,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.allowHalfRating = false,
    Key? key,
    this.filledIcon,
    this.halfFilledIcon,
    this.emptyIcon,
  }) : super(key: key);

  Widget buildStar(BuildContext context, int index) {
    IconData iconData;
    if (index >= rating) {
      iconData = emptyIcon ?? Icons.star_border;
    } else if (index > rating - 1 && index < rating) {
      iconData = halfFilledIcon ?? Icons.star_half;
    } else {
      iconData = filledIcon ?? Icons.star;
    }

    Icon icon = Icon(
      iconData,
      color:
          index >= rating ? borderColor ?? Colors.grey : color ?? Colors.yellow,
      size: size,
    );

    return InkResponse(
      highlightColor: Colors.transparent,
      radius: size ?? MediaQuery.of(context).size.width / starCount / 2,
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      onLongPress: allowHalfRating && onRatingChanged != null
          ? () => onRatingChanged!(index + 0.5)
          : null,
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: List.generate(
            starCount,
            (index) => buildStar(context, index),
          ),
        ),
      ),
    );
  }
}
