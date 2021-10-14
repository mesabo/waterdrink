import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/routes/app_pages.dart';
import 'themes/app_theme.dart';
void main() {
  runApp(
    ResponsiveSizer(
      builder: (p0, p1, p2) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: AppTheme().appTheme,
      ),
    ),
  );
}
