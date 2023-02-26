import 'package:flutter/material.dart';

import 'modal.dart';

class biling extends StatefulWidget {
  const biling({Key? key}) : super(key: key);

  @override
  State<biling> createState() => _bilingState();
}

class _bilingState extends State<biling> {
  @override
  Widget build(BuildContext context) {
    Model m1=ModalRoute.of(context)!.settings.arguments as Model;
    //total t1 = ModalRoute.of(context)!.settings.arguments as total;

    return SafeArea(
      child: Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
              Text("SHOP  RECEIPT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,letterSpacing: 2),),
               SizedBox(height: 5),
            Text("SUPERMARKET  123",style: TextStyle(fontSize: 13,letterSpacing: 1),),
            SizedBox(height: 3),
            Text("PLANET  EARTH",style: TextStyle(fontSize: 13,letterSpacing: 0),),
            SizedBox(height: 3),
            Text("TEL : 123-456-7890",style: TextStyle(fontSize: 13,letterSpacing: 2),),
            SizedBox(height: 15),
            Text("RECEIPT : 12345",style: TextStyle(fontSize: 13,letterSpacing: 2,fontWeight: FontWeight.bold),),
            SizedBox(height: 3),
            Text("CASHIER : JOHN DOE",style: TextStyle(fontSize: 12,letterSpacing: 2),),
            SizedBox(height: 3),
            Text("DATE :26/02/2023",style: TextStyle(fontSize: 13,letterSpacing: 2),),
            SizedBox(height: 20),
            Container(
              height: 2,
              width: 450,
              color: Colors.black,
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("PRODUCT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("PRICE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Text("QUANTITY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${m1.name}"),
                    Text("${m1.price}"),
                    Text("${m1.quantity}"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 260),
                  child: Container(
                    height: 2,
                    width: 450,
                    color: Colors.black,
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 2,
                    width: 450,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 25,),
                Text("THANK YOU",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 2),),
                SizedBox(height: 15),
                Text("HAVE A NICE DAY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 1),)

              ],
            ),
          ],
        ),
      ),
      ),
    );
  }

}
