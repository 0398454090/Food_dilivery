import 'package:get/get.dart';

class Dimensions{

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //890.2857142857143 / 320 =  4.05

  static double pageView = screenHeight/2.782;
  //890.2857142857143 / 220 =  4.05
  static double pageViewContainer= screenHeight/4.05;
  //890.2857142857143 / 120 = 7.419
  static double pageViewTextContainer = screenHeight/7.419;

  //dynamic height
  //890.2857142857143 / 10 = 7.419
  static double height10 = screenHeight/89.029;
  static double height15 = screenHeight/59.352;
  static double height20 = screenHeight/44.514;
  static double height30 = screenHeight/29.676;
  static double height45 = screenHeight/19.784;
  static double height50 = screenHeight/17.806;

  //890.2857142857143 / 10 = 7.419
  //dynamic width padding and margin
  static double width10 = screenHeight/89.029;
  static double width15 = screenHeight/59.352;
  static double width20 = screenHeight/44.514;
  static double width30 = screenHeight/29.676;
  static double width45 = screenHeight/19.784;
  //890.2857142857143 / 20 = 44.514
  //font size
  static double font16 = screenHeight/55.64285714;
  static double font20 = screenHeight/44.514;
  static double font26 = screenHeight/34.24175824;
  //Radius
  static double radius15 = screenHeight/59.352;
  static double radius20 = screenHeight/44.514;
  static double radius30 = screenHeight/29.676;

  //icon size
  static double iconSize24 = screenHeight/37.096;
  static double iconSize16 = screenHeight/55.64285714;
  //list view size
  ///411.42857142857144/120 = 3.428571429
  static double listViewImgSize = screenWidth/3.428571429;
  static double listViewTextContSize = screenWidth/4.114285714;
  //popular food
  //890.2857142857143 / 350 =
  static double popularFoodImgSize = screenHeight/2.543673469;
  //bottom height
  //890.2857142857143/120
  static double bottomHeightBar = screenHeight/7.419047619;
}