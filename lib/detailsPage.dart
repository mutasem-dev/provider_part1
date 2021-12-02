import 'package:flutter/material.dart';
import 'invoice.dart';
import 'package:provider/provider.dart';
class DetailsPage extends StatelessWidget {

  final Invoice invoice;
  int totalQuantity = 0;
  double totalPrice = 0;
  DetailsPage(this.invoice);
  void calc() {
    invoice.products.forEach((element) {
      totalQuantity += element.quantity;
      totalPrice += element.quantity*element.price;
    });
  }
  @override
  Widget build(BuildContext context) {
    calc();
    return Scaffold(
      appBar: AppBar(
        title: Text(invoice.customerName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Invoice# ${invoice.invoiceNo}\n Products:',style: TextStyle(fontSize: 25.0)),
          SizedBox(height: 15.0,),
          Container(
            height: 200.0,
            child: ListView.builder(
              itemCount: invoice.products.length,
              itemBuilder: (context, index) {
                return Text(
                    '${index+1}- ${invoice.products[index].pname}, '
                        'Price: ${invoice.products[index].price}, '
                        'Quantity: ${invoice.products[index].quantity}',
                    style: TextStyle(fontSize: 18.0));
              },
            ),
          ),
          Text('Total price: $totalPrice\n'
              'Total Quantity: $totalQuantity',
              style: TextStyle(fontSize: 25.0)),
        ],
      ),
    );
  }
}
