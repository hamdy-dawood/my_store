import 'package:flutter/material.dart';
import 'package:my_store/Screens/details_screen.dart';
import 'package:my_store/constants.dart';
import 'package:my_store/models/Products.dart';


import 'Product_card.dart';
class HomeBody extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return SafeArea(child: Column(
      children: [
        Container(height: KDefaultPadding*2.2,
          width: 350,
          margin: EdgeInsets.symmetric(
              horizontal: KDefaultPadding,
              vertical: KDefaultPadding/2
          ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
          child: Row(

            children: [
              SizedBox(width: 20,),
              Container(
                width: 256,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ('بحث'),
                    hintStyle: TextStyle(color: KPrimaryColor)
                    ),
                  ),
              ),

              Container(
                height: KDefaultPadding*2.2,
                width: KDefaultPadding*2.2,
                decoration: BoxDecoration(
                    color: KSecondaryColor,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.search,color: KBlueColor,size: 28,),
              ),

            ],
          ),
        ),
        SizedBox(
          height: KDefaultPadding/2,
        ),
        Expanded(child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70.0),
              decoration: BoxDecoration(
                color: KBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(40),
                  topRight: Radius.circular(40),
                  
                )
              ),
            ),
            ListView.builder(
              itemCount: 6,
              itemBuilder: (context,index )=> ProductCard(
                itemIndex: index,
                product: products[index],
                press: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>DetailsScreen(
                        product: products[index],
                      )
                      ),
                  );
                },
              ),
            )
          ],
        ))
      ],
    ));
  }
}
