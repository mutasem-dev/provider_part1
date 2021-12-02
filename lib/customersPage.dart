import 'package:flutter/material.dart';
import 'invoice_model.dart';
import 'package:provider/provider.dart';
import 'invoice.dart';

import 'detailsPage.dart';
class CustomersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Customers'),
      ),
      body: Consumer<InvoiceModel> (
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => DetailsPage(),));
                },
                child: Container(
                    color: Colors.blue[200],
                    margin: EdgeInsets.all(8.0),
                    child: Text(value.getInvoice(index).customerName,style: TextStyle(fontSize: 30.0),)
                ),
              );
            },
          );
        },
      )
    );
  }
}
