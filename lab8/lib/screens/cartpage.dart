import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab8/providers/cartcontroller.dart';
import 'package:lab8/model/productmodel.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart Page")),
      body: Obx(() {
        if (cartController.indexes.isEmpty) {
          return Center(child: Text("Your cart is empty!"));
        }

        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartController.indexes.length,
                itemBuilder: (context, i) {
                  int index = cartController.indexes[i];
                  var product = hoodies[index];

                  return ListTile(
                    leading: Image.network(product["imageUrl"], width: 50),
                    title: Text(product["title"]),
                    subtitle: Text("\$${product["price"]}"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        cartController.indexes.removeAt(i);
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar("Order", "Order placed");
                },
                child: Text("Place Order"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
