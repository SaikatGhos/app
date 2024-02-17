import 'package:flutter/material.dart';

class ItemDetailsCard extends StatelessWidget {
  ItemDetailsCard({
    super.key, 
    required this.screenHeight,
    required this.screenWeight, 
    required this.itemID,
    required this.itemName,
    required this.borderQty,
    required this.currentQty,
    required this.imgURL,
    required this.lastGivenDate,
    required this.lastPurchaseDate,
    required this.totalQty
    });
  final String itemID;
  final String itemName;
  final String totalQty;
  final String currentQty;
  final String lastPurchaseDate;
  final String lastGivenDate;
  final String borderQty;
  final String imgURL;
  

  final double screenHeight;
  final double screenWeight;
  
  final String img1='lib/assets/image/amchur_powder.jpeg';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      elevation: 8.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        height: 200,
        width: screenWeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 CircleAvatar(
                  radius: 50, //we give the image a radius of 50
                  backgroundImage: NetworkImage(
                      imgURL),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 150,
                      color: Colors.black54,
                      height: 2,
                    ),
                    const SizedBox(height: 4),
                     Text("Last Purchase Date:"+" "+lastPurchaseDate),
                     Text("Last Given Date:"+" "+lastGivenDate),
                     Text("Border Quantity:"+" "+borderQty+" "+"Gram"),
                  ],
                )
              ],
             ),
             const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Item: "+itemName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text("ID: "+itemID),
                  ],
                ),
                const SizedBox(width: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text(
                      "Total Quantity:"+" "+totalQty+" "+"Gram",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                     Text("Current Quantity:"+" "+currentQty+" "+"Gram"),
                  ],
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}