import 'package:app/GsheetSupport/gsheet_crud.dart';

import 'package:flutter/material.dart';

class DemoChecker extends StatelessWidget {
  const DemoChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
                      // itemCount: dataFromPurchaseSheet.length,
                      itemCount: dataFromSheet.length,
                      controller: ScrollController(),
                      shrinkWrap: true,
                      itemBuilder: (context,index){                                  
                        return Column(
                          children: [
                            // ListTile(leading: Text(dataFromPurchaseSheet[index]['SDate']),trailing:Text(dataFromPurchaseSheet[index]['SQuantity']),),
                            ListTile(leading: Text(dataFromSheet[index]['item']),trailing:Text(dataFromSheet[index]['l_pur_date']),),
                            Divider(thickness: 1.0,),
                            
                          ],
                        );        
                    }
                    )
    );
  }
}