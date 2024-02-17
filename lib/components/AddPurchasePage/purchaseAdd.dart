import 'package:app/components/AddPurchasePage/addPurchaseIndex.dart';
import 'package:flutter/material.dart';

class PurchaseAddPage extends StatelessWidget {
  const PurchaseAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          title: Text('Purchased Spices'),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => purchaseIndex()));
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: OutlinedButton(
                onPressed: () => {},
                child: const Text('ADD'),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
