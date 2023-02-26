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

  Model m1=Model();

  List<Model> Plist=[];

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
        body: Stack(
          children:[ Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: txtname,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Add Product"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: txtprice,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Add Price"),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: txtquantity,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      hintText: "Add Quantity"),
                ),
                // SizedBox(
                //   height: 10,
                // ),

                Expanded(
                  child: ListView.builder(
                    itemCount: Plist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("${Plist[index].name}"),
                              SizedBox(
                                width: 25,
                              ),
                              Text("${Plist[index].price}"),
                              SizedBox(
                                width: 25,
                              ),
                              Text("${Plist[index].quantity}"),
                              SizedBox(
                                width: 35,
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Plist.removeAt(index);

                                    });
                                  },
                                  icon: Icon(Icons.delete)),
                              IconButton(
                                  onPressed: () {
                                    txtname=TextEditingController(text: "${Plist[index].name}");
                                    txtprice=TextEditingController(text: "${Plist[index].price}");
                                    txtquantity=TextEditingController(text: "${Plist[index].quantity}");
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextField(
                                                  controller: txtname,
                                                  decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(),
                                                      focusedBorder:
                                                          OutlineInputBorder(),
                                                      hintText: "Add Price"),
                                                ),
                                                TextField(
                                                  controller: txtprice,
                                                  decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(),
                                                      focusedBorder:
                                                          OutlineInputBorder(),
                                                      hintText: "Add Price"),
                                                ),
                                                TextField(
                                                  controller: txtquantity,
                                                  decoration: InputDecoration(
                                                      enabledBorder:
                                                          OutlineInputBorder(),
                                                      focusedBorder:
                                                          OutlineInputBorder(),
                                                      hintText: "Add Price"),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        String name =txtname.text;
                                                        String price =txtprice.text;
                                                        String quantity =txtquantity.text;
                                                        Model m1 =Model(price: price,name: name,quantity: quantity);
                                                        Plist[index]=m1;
                                                        Navigator.pop(context);

                                                      });
                                                      },
                                                    child: Text("Add")),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    });
                                  },
                                  icon: Icon(Icons.edit)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    Model m1 =Model(name: txtname.text,price: txtprice.text,quantity: txtquantity.text);
                    Navigator.pushNamed(context, 'biling',arguments: m1);

                  });
                }, child: Text("Submit"),),
              ),
            ),
      ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(
              () {
                Model m1= Model(quantity: txtquantity.text,price: txtprice.text,name: txtname.text);
                    Plist.add(m1);

              },
            );
          },
        ),
      ),
    );
  }
}
