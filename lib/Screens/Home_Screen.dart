
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_store/widgets/details/MainDrawer.dart';
import 'package:my_store/widgets/home_body.dart';

import '../constants.dart';
import 'Shopping_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);
  @override
  static String id='HomeScreen';
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title:Text('مرحبا بكم بمتجر الاكترونيات',style: GoogleFonts.getFont('Almarai'),),
        centerTitle:true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),

            child: GestureDetector(
                onTap: (){

                  Navigator.pushNamed(context, ShoppingScreen.id);
                },
                child: Icon(Icons.shopping_cart,color: Colors.white,)),
          )
        ],
      ),
      drawer: MainDrawer(),
      body: HomeBody(),

    );

  }
}