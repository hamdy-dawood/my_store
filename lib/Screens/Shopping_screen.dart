import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_store/widgets/details/MainDrawer.dart';

import '../constants.dart';
class ShoppingScreen extends StatelessWidget {
  @override
  static String id='ShoppingScreen';
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: KBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Icon(Icons.arrow_back,color: KPrimaryColor,)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Container(
            height:300,
            width: 400,
                child: Icon(
                  FontAwesomeIcons.shoppingBag,
                  size: 150,
                  color:KPrimaryColor,
                ),
          ),
          Text('عربة التسوق الخاصة بك فارغة',
              style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
            ),
          SizedBox(height: 50,),
          Container(
            height: KDefaultPadding*2.4,
            width: 350,
            margin: EdgeInsets.symmetric(
                horizontal: KDefaultPadding,
                vertical: KDefaultPadding/2
            ),
            decoration: BoxDecoration(
              color: KSecondaryColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black)
            ),
            child: Center(child: Text('تسجيل الدخول الي حسابك',style: TextStyle(color: Colors.black),)),
          ),
          SizedBox(height: 10,),
          Container(
            height: KDefaultPadding*2.4,
            width: 350,
            margin: EdgeInsets.symmetric(
                horizontal: KDefaultPadding,
                vertical: KDefaultPadding/2
            ),
            decoration: BoxDecoration(
                color: KBackgroundColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black)
            ),
            child: Center(child: Text('اشترك الآن',style: TextStyle(color: Colors.black),)),
          ),
        ],
      ),

    );
  }
}
