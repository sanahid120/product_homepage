import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          'CRUD API',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 3,
                  childAspectRatio: 0.8
                ),
                itemCount: 20,
                itemBuilder: (context, value) {
                  return InkWell(

                    onTap: () {},
                    child: Card(

                      child: Column(

                        children: [

                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.network(
                                height: 140,
                                width: 150,
                                'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg',
                              ),
                              Positioned(
                                right: 5,
                                top: 5,
                                child: IconButton(

                                  onPressed: () {},
                                  icon: Icon(Icons.favorite,color: Colors.black,),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 5,
                                child: IconButton(

                                  onPressed: () {},
                                  icon: Icon(Icons.shopping_cart,color: Colors.black,),
                                ),
                              ),
                            ],
                          ),
                          Text('Product Title',style: TextStyle(fontSize: 16),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Price: \$900", style: TextStyle(fontSize: 9,fontWeight: FontWeight.normal,)),
                              Text('||',style: TextStyle(fontSize: 9,fontWeight: FontWeight.normal,)),
                              Text('QTY: 10',style: TextStyle(fontSize: 9,fontWeight: FontWeight.normal,)),
                            ],
                          )

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
