import 'product.dart';

class Invoice  {
  int invoiceNo;
  String customerName;
  List<Product> products;

  Invoice({this.customerName, this.products,this.invoiceNo});
}