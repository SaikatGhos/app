import 'package:app/Pages/AddPurchasePage.dart';
import 'package:app/Pages/AllSpicePage.dart';
import 'package:app/components/AddPurchasePage/addPurchaseIndex.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Spices Management'),
        centerTitle: false,
        leading:  IconButton(onPressed: (){
           
          }, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () async{
            
          }, icon: Icon(Icons.refresh)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>allSpicesPage()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.assignment_outlined,size: 50,color: Colors.white,),
                    Text("All Spices",style: TextStyle(color: Colors.white,fontSize: 30))
                  ],
                ),),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>purchaseIndex()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_shopping_cart_outlined,size: 50,color: Colors.white,),
                    Text("Add Purchase",style: TextStyle(color: Colors.white,fontSize: 30))
                  ],
                ),),
              ),
              InkWell(
                onTap: (){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_to_photos_outlined,size: 50,color: Colors.white,),
                    Text("Daily Sell",style: TextStyle(color: Colors.white,fontSize: 30))
                  ],
                ),),
              ),
              InkWell(
                onTap: (){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.autorenew_rounded,size: 50,color: Colors.white,),
                    Text("Need Refill",style: TextStyle(color: Colors.white,fontSize: 30))
                  ],
                ),),
              ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
          ),
        ),
      ),
    );
  }
}