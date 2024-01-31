// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Generate QR Code ',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true, // Center aligns the title
        backgroundColor: Colors.blueGrey.shade100,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlController.text.isNotEmpty)
                QrImageView(data: urlController.text, size: 200,),
              
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.only(left: 20, right:  20),
                  child: TextField(
                    controller: urlController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your data',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 18 ,
                      ),

                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Enter your data',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 18 ,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    
                  });

                }, child: Text(
                'Generate QR Code',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500, // Corrected value
                  fontFamily: 'Poppins',
                ),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
