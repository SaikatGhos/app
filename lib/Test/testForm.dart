import 'package:app/GsheetSupport/gsheet_crud.dart';
import 'package:app/components/AddPurchasePage/addPurchaseIndex.dart';
import 'package:flutter/material.dart';

class TestForm extends StatefulWidget {
  const TestForm({super.key});

  @override
  State<TestForm> createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  // Dropdown values
  List dropdownItems = dataFromSheet;
  String selectedDropdownValue = 'Option 1';

  // Simple text controller
  TextEditingController simpleTextController = TextEditingController();

  TextEditingController calendarController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {

    final screenWidth =  MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
          title: Text('Purchase Add'),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => purchaseIndex()));
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   child: OutlinedButton(
            //     onPressed: () => {},
            //     child: const Text('ADD'),
            //   ),
            // ),
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Container(
                width:
                   screenWidth, // Set your desired width
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  controller: calendarController,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Select Date',
                    suffixIcon: IconButton(
                      onPressed: () async {
                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );
                        if (picked != null && picked != DateTime.now()) {
                          setState(() {
                            calendarController.text = picked.toString();
                          });
                        }
                      },
                      icon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  // Dropdown
                  Expanded(
                    child: Container(
                      width: screenWidth/3, // Set your desired width
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: DropdownButton<String>(
                        value: selectedDropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDropdownValue = newValue!;
                          });
                        },
                        items: dropdownItems.map((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),

                  // Simple textbox
                  Expanded(
                    child: Container(
                      width: screenWidth/3, // Set your desired width
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        controller: simpleTextController,
                        decoration: InputDecoration(labelText: 'Enter Text'),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),

                  // Submit button
                  IconButton(
                    color: Colors.blue,
                    icon: const Icon(Icons.assignment_turned_in_rounded),
                    tooltip: 'Submit',
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
              Divider(thickness: 1,color: Colors.blue,),


              // Use Purchase List view in descending order
            ],
          ),
        ),
      ),
    );
  }
}
