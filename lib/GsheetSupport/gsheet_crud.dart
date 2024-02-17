import 'package:app/GsheetSupport/gsheet_setup.dart';


insertDataIntoSheet(userDetailsList) async {
  await UserDetails!.values.map.appendRows(userDetailsList);
  print('Data Stored');
}

List dataFromSheet = [];
// List dataFromSheetByKey = [];
//List dataFromSheetSpecific = [];

readDataFromSheet() async {
  dataFromSheet = (await UserDetails!.values.map.allRows())!;
  // dataFromSheet = (await UserDetails!.cells.map.)!;
  print('Data Fetched');
}


// List dataFromSheetSpecific=[];

// readDataFromSheetById(key) async{
//    dataFromSheetSpecific =(await UserDetails!.values.map.Row);
// }

Map<String, dynamic>? dataFromSheetSpecific={};
readDataFromSheetByKey(key) async{      
      return dataFromSheetSpecific =(await UserDetails!.values.map.rowByKey(key));      
     
  }


updateDataFromSheet() async {
  await UserDetails!.values.map.insertRowByKey(
      '145342xxHa2Vr7Ax', {'name': 'Flutter Plabs Name Updated'});
  print('Data Updated');
}

deleteDataFromSheet() async {
  final index =
      await UserDetails!.values.rowIndexOf('311936kTc4YpmXv');

  await UserDetails!.deleteRow(index);

  print('Row Deleted');
}

List dataFromPurchaseSheet = [];

readDataFromPurchaseSheet() async {
  dataFromPurchaseSheet = (await PurchaseDetails!.values.map.allRows())!;
  print('Data Fetched');
}
