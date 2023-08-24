// import 'package:flutter/material.dart';
// import 'package:ride/api/local_datascore.dart';

// class ThemeCubit extends Cubit<ThemeData> {
//   ThemeCubit() : super(AppTheme.appTheme);

//   String themeType = 'light';

//   void selectTheme(ThemeData theme) {
//     emit(theme);
//   }

//   void getCurrentTheme() async {
//     themeType = await LocalDataSource().getCurrentTheme();
//     ThemeData themeData = getTheme(themeType);
//     selectTheme(themeData);
//   }

//   Future<void> setCurrentTheme(String theme) async {
//     await LocalDataSource().setCurrentTheme(theme);
//     themeType = theme;
//     ThemeData themeData = getTheme(theme);
//     selectTheme(themeData);
//   }

//   ThemeData getTheme(String theme) {
//     return /*theme == "dark" ? AppTheme.appDarkTheme :*/ AppTheme.appTheme;
//   }
// }
