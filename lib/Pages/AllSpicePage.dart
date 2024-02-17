


import 'package:app/GsheetSupport/gsheet_crud.dart';
import 'package:app/Pages/HomePage.dart';
import 'package:app/Pages/itemDetailsPage.dart';




import 'package:flutter/material.dart';



class allSpicesPage extends StatefulWidget {
  const allSpicesPage({super.key});

  @override
  State<allSpicesPage> createState() => _allSpicesPageState();
}

class _allSpicesPageState extends State<allSpicesPage> {
   final inputText = TextEditingController();
   TextEditingController textController = TextEditingController();
   final String img1='lib/assets/image/amchur_powder.jpeg';

   List<dynamic> filterdList = dataFromSheet;
   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('All Spices'),
        centerTitle: false,
        leading:  IconButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
          }, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () async{
            await readDataFromSheet();
            setState(() {});
          }, icon: Icon(Icons.refresh)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: OutlinedButton(            
            onPressed: () => {},
            child: const Text('ADD'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
   
            ListView.builder(
              itemCount: dataFromSheet.length,
              controller: ScrollController(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                
                return Card(
                  child: ListTile(

                 title: Row(
                   children: [
                    
                     Container(width: 200,child: Text(dataFromSheet[index]['item'],style: TextStyle(),)),
                     SizedBox(width: 10,),
                     Text(dataFromSheet[index]['sqty'],style: TextStyle(color: Colors.red),),
                     SizedBox(width: 10,),
                     Text(dataFromSheet[index]['l_pur_date'],),
                     
                   ],
                 ),
                 leading: SizedBox(
                   width: 50,
                   height: 50,
                   child: Image.network(img1),
                 ),
                 trailing: Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.black,),
                 onTap: (){
                  var itemDetailsMap = {
                    'id':dataFromSheet[index]['id'],
                    'item':dataFromSheet[index]['item'],
                    'tqty':dataFromSheet[index]['tqty'],
                    'unit':dataFromSheet[index]['unit'],
                    'img':dataFromSheet[index]['img'],
                    'l_pur_date':dataFromSheet[index]['l_pur_date'],
                    'bqty':dataFromSheet[index]['bqty']
                    };
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemDetailsPageBody(dataFromItemDetails: itemDetailsMap,)));
                 },
                  )
                );
      //             // Row(
      //             //   children: [
      //             //     Text(
      //             //       dataFromSheet[index]['id'],
      //             //       style: TextStyle(fontSize: 20),
      //             //     ),
      //             //     SizedBox(width: 30,),
      //             //     Text(
      //             //       dataFromSheet[index]['item'],
      //             //       style: TextStyle(fontSize: 20),
      //             //     ),
      //             //     SizedBox(width: 100,),
      //             //     Text(
      //             //       dataFromSheet[index]['tqty'],
      //             //       style: TextStyle(fontSize: 20),
      //             //     ),
      //             //     SizedBox(width: 100,),
      //             //     Text(
      //             //       dataFromSheet[index]['unit'],
      //             //       style: TextStyle(fontSize: 20),
      //             //     ),
      //             //   ],
      //             // ),
      //           // );
                
              },
    
            )

        ],
      )),


      //           },
      //           decoration: const InputDecoration(
      //             filled: true,
      //             fillColor: Color.fromARGB(255, 205, 208, 210),
      //             enabledBorder: InputBorder.none,
      //             focusedBorder: InputBorder.none,
      //             hintText: 'Search'
      //           ),
      //           textInputAction: TextInputAction.search,
      //         ),
      //         ),
      //         Expanded(
      //           child: ListView.builder(
      //             itemCount: dataFromSheet.length,
      //             itemBuilder: (context, index) {
      //               return ListTile(
      //                 title: Text(dataFromSheet[index]['item']),
      //                 onTap: () {
      //                   var itemDetailsMap = {
      //               'id':dataFromSheet[index]['id'],
      //               'item':dataFromSheet[index]['item'],
      //               'tqty':dataFromSheet[index]['tqty'],
      //               'unit':dataFromSheet[index]['unit'],
      //               'img':dataFromSheet[index]['img'],
      //               'l_pur_date':dataFromSheet[index]['l_pur_date'],
      //               'bqty':dataFromSheet[index]['bqty']
      //               };
      //                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemDetailsPageBody(dataFromItemDetails: itemDetailsMap,)));
      //                 },
      //               );
      //             },
      //             )
      //           )
      //     ],
      //   ),
      // ),





    );
  }
}

