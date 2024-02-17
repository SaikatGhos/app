import 'package:app/components/AddPurchasePage/addPurchaseIndex.dart';
import 'package:flutter/material.dart';

class AddPurchasePage extends StatelessWidget {
  const AddPurchasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text('Add Purchased Spices'),     
        leading: IconButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>purchaseIndex()));
          }, icon: Icon(Icons.arrow_back)),
           actions: [
          IconButton(onPressed: () async{
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPurchasePage()));

          }, icon: Icon(Icons.refresh)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            
          ),
        ],
        
      ),
    );
  }
}