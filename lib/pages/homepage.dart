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
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 3,
                  childAspectRatio: 0.8,
                ),
                itemCount: 20,
                itemBuilder: (context, value) {
                  return GestureDetector(
                    onLongPressStart: (details) {
                      showMenu(

                        context: context,
                        position: RelativeRect.fromLTRB(

                          details.globalPosition.dx,
                          details.globalPosition.dy,
                          details.globalPosition.dx,
                          details.globalPosition.dy,
                        ),
                        items: [
                          PopupMenuItem(onTap: (){menuFunction('edit');},padding: EdgeInsets.all(6),value: 'edit', child: Text('Edit')),
                          PopupMenuItem(onTap: (){menuFunction('delete');},padding: EdgeInsets.all(6),value: 'delete', child: Text('Delete'),),
                        ],
                      );
                    },
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 140,
                            child: Image.network(
                              'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            ' Shoe',
                            style: TextStyle(
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Price: \$900",
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                '||',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'QTY: 10',
                                style: TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {menuFunction('add');},
        elevation: 100,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
    );
  }

  VoidCallback? menuFunction(String text) {
    if(text=="edit"){

    }
    if(text=="delete"){

    }
    if(text=="add"){

    }
    return null;
  }
}
