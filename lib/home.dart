import 'package:biling/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtquantity = TextEditingController();
  List Name = [];
  List Price = [];
  List Quantity = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Add Your Product"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: txtname,
                decoration: InputDecoration(hintText: "Add Product"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtprice,
                decoration: InputDecoration(hintText: "Price"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtquantity,
                decoration: InputDecoration(hintText: "Quantity"),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: Name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        child: Row(
                          children: [
                            Text("${Name[index]}"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("${Price[index]}"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("${Quantity[index]}"),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    Name.removeAt(index);
                                    Price.removeAt(index);
                                    Quantity.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Name.add("${txtname.text}");
              Price.add("${txtprice.text}");
              Quantity.add("${txtquantity.text}");
            },);
          },
        ),
      ),
    );
  }
}
