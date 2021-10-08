import 'package:flutter/material.dart';
import 'package:my_store/constants.dart';
import 'package:my_store/models/Products.dart';
import 'package:my_store/widgets/details/product_image.dart';
import 'color_dot.dart';
class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: KDefaultPadding*1.5,),

          decoration: BoxDecoration(color: KBackgroundColor,
          borderRadius:BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)
          ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: ProductImage(size: size, image: product.image,)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: KTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: KDefaultPadding/2),
                child: Text(product.title,
                style: Theme.of(context).textTheme.headline6,),
              ),
              Text('السعر:\$${product.price}',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: KSecondaryColor
              ),),
              SizedBox(height: KDefaultPadding,)
            ],
          ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: KDefaultPadding/2),
        padding: EdgeInsets.symmetric(horizontal: KDefaultPadding*1.5,
        vertical: KDefaultPadding/2),
        child: Text(product.description,
        style: TextStyle(color: Colors.white,fontSize: 19.0),),
      ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(right: 50,left: 50),
          child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(KDefaultPadding),
            ),
            child: Center(
              child: Text('اضف الي السلة ',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                ),

              ),
            ),
          ),
        )
      ],
      
    );
  }
}

