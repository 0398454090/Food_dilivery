import 'package:appfooddelivery/utils/dimensions.dart';
import 'package:appfooddelivery/widget/app_column.dart';
import 'package:appfooddelivery/widget/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widget/big_text.dart';
import '../../widget/exandable_text_widget.dart';
import '../../widget/icon_and_text_widget.dart';
import '../../widget/small_text.dart';

class PopularFoodDetail extends StatefulWidget {
  const PopularFoodDetail({super.key});

  @override
  State<PopularFoodDetail> createState() => _PopularFoodDetailState();
}

class _PopularFoodDetailState extends State<PopularFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image/food_3.png"
                    ),
                    fit: BoxFit.cover
                  )
                ),
          )),
          //icon widget
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white,
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Vietnam side"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20),
                  Expanded(child: SingleChildScrollView(child: ExandableTextWidget(text: "Bún riêu is a traditional Vietnamese noodle soup known for its rich, flavorful broth and aromatic ingredients. The soup is typically made with crab or shrimp paste, giving it a distinct umami flavor. The broth is often prepared by simmering pork bones, tomatoes, and various spices, resulting in a tangy and slightly sweet taste A typical bowl of bún riêu includes rice vermicelli noodles, tender pieces of crab or shrimp, and a variety of fresh herbs such as mint, cilantro, and perilla leaves. It's usually garnished with fried tofu, congealed pig's blood, and sometimes snails, adding a variety of textures and flavors. A squeeze of lime juice, a few slices of fresh chili, and a dash of shrimp paste are often added at the table to enhance the taste. Bún riêu is not only delicious but also a visually appealing dish with its vibrant red broth and colorful toppings. It's a beloved dish in Vietnamese cuisine, enjoyed by locals and visitors alike for its unique and satisfying flavor profile.",)))

                ],
              ),
          )),
          //expandable text widget

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width20, right: Dimensions.width20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15, left: Dimensions.width20, right: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
