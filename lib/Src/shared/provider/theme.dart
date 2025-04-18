import 'package:flutter/material.dart';



@immutable
class BasilTheme extends ThemeExtension<BasilTheme>{ 
  
  
  @override
  const BasilTheme({
  this.primaryColor = const Color(0xFF356859),
  this.tertiaryColor = const Color(0xFFFF5722),
  this.neutralColor = const Color(0xFFFFFBE6),
});


final Color primaryColor, tertiaryColor, neutralColor;

ThemeData toThemeData(){
  return ThemeData(useMaterial3: true);
}
}