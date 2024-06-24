
import 'package:appfooddelivery/utils/colors.dart';
import 'package:appfooddelivery/utils/dimensions.dart';
import 'package:appfooddelivery/widget/big_text.dart';
import 'package:appfooddelivery/widget/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food_page_body.dart';

class MainPageHome extends StatefulWidget {
  const MainPageHome({super.key});

  @override
  State<MainPageHome> createState() => _MainPageHomeState();
}

class _MainPageHomeState extends State<MainPageHome> {
  @override
  Widget build(BuildContext context) {
    //print("current width is" +MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height50, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Ho Chi Minh", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Go Vap", color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_sharp)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color:  AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
          //showing the body

        ],
      ),
    );
  }
}
