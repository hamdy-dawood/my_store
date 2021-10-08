import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_store/Screens/Home_Screen.dart';
import '../../constants.dart';
class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key key,
  }) : super(key: key);

  ListTile buildListTile(String title,Function onTapLink) {
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 18)),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: Column(

          children: [
            Container(
              height: 80,
              width: double.infinity,
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child:Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person,color: KPrimaryColor,size: 30,),
                  ),
                  Text('مرحبا.',
                    style: GoogleFonts.getFont('Almarai',fontSize: 20,color:KPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(thickness: 5,color:KPrimaryColor ,),
          buildListTile('الصفحة الرئيسية',() {
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          }),
            buildListTile('الحساب',() {

            }),
            buildListTile('المشتريات',() {

            }),
            buildListTile('شراء مرة اخري',() {

            }),
            buildListTile('القوائم',() {

            }),
            buildListTile('سجل التصفح الخاص بك',() {

            }),
            buildListTile('توصياتك',() {

            }),
            buildListTile('خدمة العملاء',() {

            }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(thickness: 2,color:KPrimaryColor ,),

              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text('الاعدادات',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Icon(Icons.language),
                    SizedBox(width: 5,),
                    Text('العربية',style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Icon(Icons.flag),
                    SizedBox(width: 5,),
                    Text('مصر',style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text('تسجيل الدخول',
                  style: GoogleFonts.getFont('Almarai',fontSize: 20,color:KPrimaryColor ),
                ),
              )

            ],
          )

          ],
        ),



    );
  }


}



