import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
//     -----------   APP COLORS   -----------
//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/// A class to hold all the color constants for the app.
class AppColors {
  AppColors._(); // This class is not meant to be instantiated.

  static const Color primaryBlue = Color(0xFF0B3583);
  static const Color accentYellow = Color(0xFFFFF6AA);
  static const Color accentLightBlue = Color(0xFF08B2E3);
  static const Color accentGreen = Color(0xFF089A69);

  // Additional common colors from the design
  static const Color textDark = Color(0xFF1F1F1F);
  static const Color textLight = Colors.white;
  static const Color backgroundGrey = Color(0xFFF0F0F0);
  static const Color cardGrey = Color(0xFFE0E0E0);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
//     -----------   LAYOUT CONSTANTS   -----------
//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/// A class for holding constant layout values.
class AppConstants {
  AppConstants._();

  /// Default padding value used throughout the app.
  static const double defaultPadding = 16.0;

  /// Default border radius for cards, buttons, etc.
  static final BorderRadius defaultBorderRadius = BorderRadius.circular(12.0);
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
//     -----------   TEXT STYLES   -----------
//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/// A class for holding pre-defined text styles.
class AppTextStyles {
  AppTextStyles._();

  static const String _fontFamily = 'Urbanist';

  /// Style for large headings (e.g., "Bintangnya redup")
  static const TextStyle heading1 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700, // Bold
    fontSize: 32,
    color: AppColors.textDark,
  );

  /// Style for medium headings (e.g., "Pengaturan", "Overview")
  static const TextStyle heading2 = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600, // SemiBold
    fontSize: 24,
    color: AppColors.textDark,
  );

  /// Style for body text (e.g., list item labels like "nama", "kelas")
  static const TextStyle bodyText = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500, // Medium
    fontSize: 16,
    color: AppColors.textDark,
  );

  /// Style for button text
  static const TextStyle buttonText = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600, // SemiBold
    fontSize: 18,
    color: AppColors.textLight,
  );
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
//     -----------   FORMATTERS   -----------
//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/// A utility class for formatting data.
class AppFormatters {
  AppFormatters._();

  /// Formats a [Duration] into a HH:MM:SS or MM:SS string.
  /// If the duration is less than an hour, it omits the hours part.
  static String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    if (duration.inHours > 0) {
      return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    } else {
      return "$twoDigitMinutes:$twoDigitSeconds";
    }
  }
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
//     -----------   UI UTILS & HELPERS   -----------
//
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

/// A utility class for common UI helper functions.
class AppUtils {
  AppUtils._();

  /// Shows a simple SnackBar with a message.
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  /// Returns the width of the screen.
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Returns the height of the screen.
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}