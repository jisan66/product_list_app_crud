import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({Key? key}) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Product Name",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Product Code",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Unit Price",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Available Unit",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Total Price",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Image",
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12)),
                      onPressed: () {},
                      child: const Text("Add")))
            ],
          ),
        ),
      ),
    );
  }
}
