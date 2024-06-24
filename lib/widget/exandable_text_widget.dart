import 'package:appfooddelivery/utils/colors.dart';
import 'package:appfooddelivery/utils/dimensions.dart';
import 'package:appfooddelivery/widget/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExandableTextWidget extends StatefulWidget {
  final String text;
  const ExandableTextWidget({super.key, required this.text});

  @override
  State<ExandableTextWidget> createState() => _ExandableTextWidgetState();
}

class _ExandableTextWidgetState extends State<ExandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight/5.63;
  // i love flutter laravel and golang 30
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length>textHeight){
       firstHalf = widget.text.substring(0, textHeight.toInt());
       secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color: AppColors.paraColor,size: Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height:1.8, color: AppColors.paraColor, text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(size: Dimensions.font16, text: "Show more", color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down_sharp:Icons.arrow_drop_up, color: AppColors.mainColor,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
