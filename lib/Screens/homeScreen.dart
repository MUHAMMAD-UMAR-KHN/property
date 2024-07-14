import 'package:flutter/material.dart';
import 'package:project/widgets/listOfHome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              child: Column(children: [
                Align(alignment: Alignment.topLeft,child: Text("Location",style: TextStyle(color: Colors.grey),)),
                Align(alignment: Alignment.topLeft,child: Text("Los Angeles, CA",style: TextStyle(fontWeight: FontWeight.bold),)),
              ],),
            ),
            SizedBox(height: 30,),
            Container(
              child: Column(children: [
                Align(alignment: Alignment.topLeft,child: Text("Discover Best",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Align(alignment: Alignment.topLeft,child: Text("Suitable Property",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              ],),
            ),
            SizedBox(height: 25,),

            //for home,apartment and flat row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                //home
                GestureDetector(
                  onTap: (){},
                  child: GestureDetector(
                    onTap: () {
                     setState(() {
                       HomeList();
                     });
                    },
                    child: Container( 
                      decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 4),
                        child: Text("Home",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                //apartment
                SizedBox(width: 10,),
                Container( 
                  decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 4),
                    child: Text("Apartment",style: TextStyle(color: Colors.white),),
                  ),
                ),
                //flats
                SizedBox(width: 10,),
                Container( 
                  decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 4),
                    child: Text("Flat",style: TextStyle(color: Colors.white),),
                  ),
                ),
                //bangloes
                SizedBox(width: 10,),
                Container( 
                  decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 4),
                    child: Text("Bangloes",style: TextStyle(color: Colors.white),),
                  ),
                ),
                //vilas
                SizedBox(width: 10,),
              Container( 
                decoration: BoxDecoration(color: Colors.grey[500],borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 4,bottom: 4),
                  child: Text("Vilas",style: TextStyle(color: Colors.white),),
                ),
              ),
              
              ],),
            ),

          ],
        ),
      ) 
    );
  }
}