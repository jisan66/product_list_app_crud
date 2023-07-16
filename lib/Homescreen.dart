import 'dart:convert';
import 'product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'AddNewProduct.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Product> products = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Call API");
    getProducts();
  }

  void getProducts() async {
    Response response =
    await get(Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct"));
    print(response.statusCode);
    print(response.body);
    final Map<String, dynamic> decodedResponse = jsonDecode(response.body);
    if (response.statusCode == 200 && decodedResponse["status"] == "success") {
      for (var e in decodedResponse["data"]) {
        products.add(Product.toJson(e));
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddNewProduct()));
            },
            child: const Icon(Icons.add)),
        body: ListView.separated(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                onLongPress: () {
                  showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          titlePadding: const EdgeInsets.only(left: 24),
                          contentPadding: const EdgeInsets.only(
                              left: 8, right: 8, bottom: 8),
                          title: Row(
                            children: [
                              const Text("Choose an action"),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.close),
                              )
                            ],
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.edit),
                                title: const Text("Edit"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.delete),
                                title: const Text("Delete"),
                              ),
                            ],
                          ),
                        );
                      });
                },
                title:  Text(products[index].productName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Product Price: ${products[index].unitPrice}"),
                    Text("Product Code :  ${products[index].productCode}"),
                    Text("Available Units :  ${products[index].qty}"),
                  ],
                ),
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.network(
                    products[index].img,
                    errorBuilder: (context, obj, stackTrace) {
                      return const Icon(
                        Icons.image,
                        size: 40,
                      );
                    },
                  ),
                ),
                trailing: Text("Total Price: ${products[index].unitPrice}/p"),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            }));
  }
}
