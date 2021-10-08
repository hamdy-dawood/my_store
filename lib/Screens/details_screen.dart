import 'package:flutter/material.dart';
import 'package:my_store/constants.dart';
import 'package:my_store/models/Products.dart';
import 'package:my_store/models/Products.dart';

import 'package:my_store/widgets/details/details_body.dart';
class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:KPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: KBackgroundColor,
      leading: IconButton(
        icon: Padding(
          padding: const EdgeInsets.only(right: KDefaultPadding),
          child: Icon(Icons.arrow_back,color: KPrimaryColor,),
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),

      title: Text('رجوع',style:Theme.of(context).textTheme.bodyText2 ),
    );
  }
}
