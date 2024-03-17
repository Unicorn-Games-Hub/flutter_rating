## [0.0.1] - TODO: Add initial release date.

- Initial release of the StarRating widget with basic functionality for displaying and interacting with star ratings in Flutter apps.

## [0.0.2] - September 24, 2018

- Fixed background transparency issues.
- Addressed example overflow problems.
- Adjusted star size to be relative to the screen width.
- Improved splash animation on click.
- Formatted code for better readability and maintainability.

## [0.0.3] - TODO: Add release date for this update.

- Implemented Null Safety: Updated the widget for null safety to comply with the latest Dart and Flutter standards.
- Customizable Icons with IconData: Introduced parameters (filledIcon, halfFilledIcon, emptyIcon) to accept IconData, allowing \* users to customize the appearance of the star icons more easily.
- Optional Half-Star Rating: Added the allowHalfRating parameter to enable or disable half-star ratings through a long press, enhancing user interaction.
- Color Customization for Default Icons: Ensured that if custom icons are not provided, the default icons (Icons.star, Icons.star_half, Icons.star_border) will use the color and borderColor specified by the user.
- Refined Code Structure: Streamlined the widget's implementation by optimizing parameter usage and simplifying the widget's overall structure.

- Breaking Changes:
- Transitioned icon customization from Widget to IconData for filledIcon, halfFilledIcon, and emptyIcon parameters to streamline the customization process and align with Flutter's icon handling conventions.
- Updated RatingChangeCallback to be nullable to better handle cases where no action is taken on rating change.

- Deprecated Features:
- Deprecation of direct star size specification relative to screen width in favor of a more straightforward size parameter, allowing for direct control over icon sizes and simplifying the widget's interface.
