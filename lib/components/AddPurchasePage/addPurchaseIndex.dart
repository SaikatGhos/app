import 'package:app/Pages/AddPurchasePage.dart';
import 'package:app/Pages/HomePage.dart';
import 'package:app/components/AddPurchasePage/purchaseAdd.dart';
import 'package:flutter/material.dart';

class purchaseIndex extends StatelessWidget {
  const purchaseIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text('Filter Purchased Spices'),     
        leading: IconButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
          }, icon: Icon(Icons.arrow_back)),
           actions: [
          IconButton(onPressed: () async{
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PurchaseAddPage()));

          }, icon: Icon(Icons.add)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            
          ),
        ],
        
      ),
    );
  }
}