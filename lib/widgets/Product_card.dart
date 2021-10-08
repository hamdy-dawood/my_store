import 'package:flutter/material.dart';
import 'package:my_store/models/Products.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product, this.press,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return
       Container(
        margin: EdgeInsets.symmetric(
            horizontal: KDefaultPadding,
            vertical: KDefaultPadding/2
        ),
        height: 190.0,
        child: InkWell(
          onTap: press,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 166.0,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(22),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,15),
                          blurRadius: 25,
                          color: Colors.black12
                      )
                    ]),

              ),
              Positioned(
                  top: 0.0,
                  left: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                    height: 160,
                    width: 200,
                    child: Image.asset(product.image),
                  )),
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: SizedBox(
                    height: 136.0,
                    width: size.width-200,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                          child: Text(product.title,style: Theme.of(context).textTheme.bodyText1,),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
                          child: Text(product.subtitle,style: Theme.of(context).textTheme.caption,),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(KDefaultPadding),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding*1.5,
                                vertical: KDefaultPadding/4 ),
                            decoration: BoxDecoration(
                              color: KSecondaryColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text('السعر: \$${product.price}'),

                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      );

  }
}
