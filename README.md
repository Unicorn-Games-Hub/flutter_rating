## Flutter Rating

The Flutter Rating widget is a highly customizable and easy-to-use widget for implementing a rating system within your Flutter applications. Whether you're building an app that rates movies, restaurants, or any other items, this widget offers the flexibility you need.

## Getting Started

![Star Rating package in action](https://github.com/goops17/flutter_rating/blob/master/example/assets/full_rating.gif?raw=true)

To get started with the Flutter Rating widget, you only need to specify the initial rating. Here's the simplest way to include a rating widget in your app:

```dart
StarRating(rating: 3.5),
```

This snippet creates a rating widget initialized with a 3.5-star rating. It's that easy!

For more advanced usage, see the following sections and check out the /example directory for comprehensive examples.

## Full Star Rating

If you want to use only full stars (no half stars), simply set the allowHalfRating parameter to false:

```dart
StarRating(
  rating: 4,
  allowHalfRating: false,
  onRatingChanged: (rating) => setState(() => this.rating = rating),
),
```

This configuration restricts the user to select only full star ratings.

## Half Star Rating

To enable half-star ratings, allowing for more granular ratings, set allowHalfRating to true. This is especially useful for detailed feedback scenarios:

```dart
StarRating(
  rating: 3.5,
  allowHalfRating: true,
  onRatingChanged: (rating) => setState(() => this.rating = rating),
),
```

With allowHalfRating enabled, users can give half-star ratings by tapping or long-pressing on the stars.

## Customizing the Icons

![Custom Icons in Star Rating](https://github.com/goops17/flutter_rating/blob/master/example/assets/half_rating.gif?raw=true)

You can customize the filled, half-filled, and empty stars by providing your own IconData. Here's how to customize each star icon:

```dart
StarRating(
  rating: 3.5,
  filledIcon: Icons.favorite,
  halfFilledIcon: Icons.favorite_border,
  emptyIcon: Icons.favorite_outline,
  color: Colors.red, // Color for filled and half-filled icons
  borderColor: Colors.grey, // Color for empty icons
  onRatingChanged: (rating) => setState(() => this.rating = rating),
),
```

This example uses heart icons instead of stars, showing the versatility of the Flutter Rating widget.

## Handling Rating Changes

To respond to rating changes, use the onRatingChanged callback. This callback provides the new rating value, allowing you to update your UI or perform actions based on the rating:

```dart
StarRating(
  rating: 3.5,
  onRatingChanged: (rating) => setState(() {
    this.rating = rating;
    // Perform additional actions based on the new rating here
  }),
),

```

This setup ensures your app dynamically responds as users adjust their ratings.

For a full list of customizable properties and more examples, please refer to the [/example](/example) directory.
