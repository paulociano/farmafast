import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmaFastColors {
  static const primary = Color(0xFFC90036);
  static const primaryDark = Color(0xFF960025);
  static const soft = Color(0xFFFFEEF2);
  static const ink = Color(0xFF17171B);
  static const muted = Color(0xFF6F7278);
  static const surface = Color(0xFFF7F8FA);
  static const border = Color(0xFFE5E7EB);
}

class FarmaFastTheme {
  static ThemeData light() {
    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: FarmaFastColors.primary,
        primary: FarmaFastColors.primary,
        surface: Colors.white,
      ),
    );

    final textTheme = GoogleFonts.interTextTheme(base.textTheme).copyWith(
      headlineMedium: GoogleFonts.inter(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        color: FarmaFastColors.ink,
      ),
      titleLarge: GoogleFonts.inter(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: FarmaFastColors.ink,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: FarmaFastColors.ink,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        color: FarmaFastColors.ink,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        color: FarmaFastColors.muted,
      ),
    );

    return base.copyWith(
      scaffoldBackgroundColor: FarmaFastColors.surface,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: FarmaFastColors.ink,
        elevation: 0,
        centerTitle: false,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: textTheme.titleLarge,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(color: FarmaFastColors.border),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: textTheme.bodyMedium,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: FarmaFastColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: FarmaFastColors.primary, width: 1.6),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: FarmaFastColors.border),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(52),
          backgroundColor: FarmaFastColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: GoogleFonts.inter(fontWeight: FontWeight.w700),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: FarmaFastColors.soft,
        labelTextStyle: WidgetStatePropertyAll(
          GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ),
      dividerColor: FarmaFastColors.border,
    );
  }
}
