import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  static const String routeName = '/Help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "How to use ?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: const [
              Text(
                """ShoeKart is a go-to platform, it's sneakers app where it employs a few different
methods to enable everyday sneaker lovers greater access to its shoes.

Before we go any further, it should be noted that at least in the United States, 
ShoeKart has successfully shut down bots ability to succeed on the site.

This tutorial is designed to help first-time India-based sneaker lovers who are
attempting to cop a shoe via a ShoeKart, but have no idea how either works. SNKRS is
used to sell Nike shoes and more recently apparel, but also Nike brands Converse and Jordan.""",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Card(
                elevation: 10,
                child: Text(
                  '''
              Steps to use this app-
              1. Login your account.
              2. Select your favourite shoe.
              3. Add it to cart.
              4. Buy it.
              ''',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
