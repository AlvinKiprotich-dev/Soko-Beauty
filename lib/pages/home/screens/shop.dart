import 'package:flutter/material.dart';
import 'package:soko_beauty/pages/payment/payment.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            centerTitle: true,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IntrinsicWidth(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              background: Image.network(
                'https://picsum.photos/400/200', // Replace with your own image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 20),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 270,
                  mainAxisExtent: 300,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemCount: 10, // Set the number of cards you want to display
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Image.network(
                            "https://picsum.photos/400/200?random=$index",
                            fit: BoxFit.cover,
                          ),
                        ),
                        ListTile(
                          title: Text('Product Name'),
                          subtitle: Text('Price: \Ksh 1000'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            TextButton(
                              child: const Text('BUY'),
                              onPressed: () {/* Add your action here */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
