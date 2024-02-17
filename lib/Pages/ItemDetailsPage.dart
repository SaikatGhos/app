import 'package:app/GsheetSupport/gsheet_crud.dart';
import 'package:app/Pages/AllSpicePage.dart';
import 'package:app/components/ItemDetailsPage/itemDetailsCard.dart';

import 'package:app/widgets/demoCard.dart';
import 'package:flutter/material.dart';


class ItemDetailsPageBody extends StatelessWidget {
  ItemDetailsPageBody({super.key, 
  required this.dataFromItemDetails,
  // required this.itemID,
  //   required this.itemName,
  //   required this.borderQty,
  //   required this.currentQty,
  //   required this.imgURL,
  //   required this.lastGivenDate,
  //   required this.lastPurchaseDate,
  //   required this.totalQty
  });
  final Map dataFromItemDetails;
  
  // final String itemID;
  // final String itemName;
  // final String totalQty;
  // final String currentQty;
  // final String lastPurchaseDate;
  // final String lastGivenDate;
  // final String borderQty;
  // final String imgURL;

  final String img1='lib/assets/image/amchur_powder.jpeg';
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text(dataFromItemDetails['item'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        leading: IconButton(onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>allSpicesPage()));
          }, icon: Icon(Icons.arrow_back)),
          actions: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20,),
               child: IconButton(onPressed: () {  
                          
                         }, icon: Icon(Icons.refresh)),
             ),
          ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              
              ItemDetailsCard(screenHeight: screenHeight,
              screenWeight: screenWidth,
              borderQty: dataFromItemDetails['bqty'].toString(),
              currentQty: dataFromItemDetails['sqty'].toString(),
              itemID: dataFromItemDetails['id'].toString(),
              itemName: dataFromItemDetails['item'].toString(),
              totalQty: dataFromItemDetails['tqty'].toString(),
              lastGivenDate: dataFromItemDetails['tgivenqty'].toString(),
              lastPurchaseDate: dataFromItemDetails['l_pur_date'].toString(),
              imgURL: dataFromItemDetails['img'].toString(),
              ),
              // Image.network(img1,width: screenWidth,height: (screenHeight/4),fit: BoxFit.cover,),
              
              Democard(typeInfo: "Used",typeButton: "Used"),
              
              Positioned(
                top: 320,
                left: 0,
                bottom: 80,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  height: screenHeight/4,
                  width: screenWidth,
                child: SingleChildScrollView(
                  child: 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    ListView.builder(
                      itemCount: dataFromSheet.length,
                      controller: ScrollController(),
                      shrinkWrap: true,
                      itemBuilder: (context,index){                                  
                        return Column(
                          children: [
                            dataFromSheet[index]['SItem']==dataFromItemDetails['item']?
                            ListTile(leading: Text(dataFromSheet[index]['SDate']),title: Text(dataFromSheet[index]['SItem']),trailing:Text(dataFromSheet[index]['SQuantity']),):SizedBox(),
                            Divider(thickness: 1.0,),
                            
                          ],
                        );
      //                   return Card(
      // child: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               DateTime.parse(dataFromSheet[index]['l_pur_date'].toString()).toString()
      //               ,
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
                  
      //           ],
      //         ),
      //       ),
      //       SizedBox(width: 16),
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               dataFromSheet[index]['tqty'],
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
                 
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ));
                    }
                    )
                  ],),
                )),
              )),

              Democard(typeInfo: "Purchase",typeButton: "Purchase"),

              Positioned(
                top: 320,
                left: 0,
                bottom: 80,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  height: screenHeight/5,
                  width: screenWidth,
                child: SingleChildScrollView(
                  child: 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    
                    ListView.builder(
                      itemCount: dataFromSheet.length,
                      // itemCount: dataFromSheet.length,
                      controller: ScrollController(),
                      shrinkWrap: true,
                      itemBuilder: (context,index){                                  
                        return Column(
                          children: [
                            
                            dataFromSheet[index]['PItem']==dataFromItemDetails['item']?
                            ListTile(leading: Text(dataFromSheet[index]['PDate']),title: Text(dataFromSheet[index]['PItem']),trailing:Text(dataFromSheet[index]['PQuantity']),):Divider(thickness: 1.0,),
                            // ListTile(leading: Text(dataFromSheet[index]['l_pur_date']),trailing:Text(dataFromSheet[index]['item']),),
                            
                            
                          ],
                        );
      //                   return Card(
      // child: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               DateTime.parse(dataFromSheet[index]['l_pur_date'].toString()).toString()
      //               ,
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
                  
      //           ],
      //         ),
      //       ),
      //       SizedBox(width: 16),
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               dataFromSheet[index]['tqty'],
      //               style: TextStyle(
      //                 fontSize: 18,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
                 
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ));
                    }
                    )
                  ],),
                )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}