import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
   ListViewCard({super.key,required this.imageURL,required this.mainTitle,required this.subTitle,required this.boundaryQty,required this.units,required this.lastPurchaseDate,this.onTap });
   final String imageURL;
   final String mainTitle;
   final String subTitle;
   final String boundaryQty;
   final String units;
   final String lastPurchaseDate;
   final Function? onTap;


    
  @override
  Widget build(BuildContext context) {
    return  Card(
  // Define the shape of the card
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
  // Define how the card's content should be clipped
  clipBehavior: Clip.antiAliasWithSaveLayer,
  // Define the child widget of the card
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Add padding around the row widget
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add an image widget to display an image
            Image.network(imageURL,
            height: 100,
              width: 100,
              fit: BoxFit.cover,),
            // Add some spacing between the image and the text
            Container(width: 20),
            // Add an expanded widget to take up the remaining horizontal space
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Add some spacing between the top of the card and the title
                  Container(height: 5),
                  // Add a title widget
                  Text(
                    mainTitle,
                    style: TextStyle(color: Colors.black,),                   
                  ),
                  // Add some spacing between the title and the subtitle
                  Container(height: 5),
                  // Add a subtitle widget
                  Text(                    
                    "Qty:$subTitle-$units",
                    style: subTitle == boundaryQty? TextStyle(color: Colors.red[500],):TextStyle(color: Colors.grey[500],),                    
                  ),
                  // Add some spacing between the subtitle and the text
                  Container(height: 10),
                  // Add a text widget to display some text
                  Text(
                    "Last Purchase Date: $lastPurchaseDate",
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
}