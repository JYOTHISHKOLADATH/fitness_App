import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List overWeightWeak1=["Lunges","Bicycle Crunches","Squats","Mountain Climbers","Jumping Jacks"];
  List overWeightWeak2=["Push-Ups","Tricep Dips","Lunges","Russian Twist"];
  // List overWeightWeak3=["","","","","","",];
  // List overWeightWeak4=[];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("WORKOUT PLAN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 20,),
              Container(
                height: 150,
                color: Colors.yellow,
                child: Row(
                  children: [
                    Container(
                      width: 100,color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEEK 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: overWeightWeak1.length, // Set the number of items in the list
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    color: Colors.blue,
                                    height: 100,
                                    child: ListTile(
                                      title: Text(overWeightWeak1[index]),
                                      // subtitle: Text('Subtitle of Item $index'),
                                      // leading: Icon(Icons.star), // Just an example icon
                                      onTap: () {
                                        // Action when this item is tapped
                                        print('Tapped on Item $index');
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 150,
                color: Colors.yellow,
                child: Row(
                  children: [
                    Container(
                      width: 100,color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEEK 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: overWeightWeak2.length, // Set the number of items in the list
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    color: Colors.blue,
                                    height: 100,
                                    child: ListTile(
                                      title: Text(overWeightWeak2[index]),
                                      // subtitle: Text('Subtitle of Item $index'),
                                      // leading: Icon(Icons.star), // Just an example icon
                                      onTap: () {
                                        // Action when this item is tapped
                                        print('Tapped on Item $index');
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 150,
                color: Colors.yellow,
                child: Row(
                  children: [
                    Container(
                      width: 100,color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEEK 3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: overWeightWeak1.length, // Set the number of items in the list
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    color: Colors.blue,
                                    height: 100,
                                    child: ListTile(
                                      title: Text(overWeightWeak1[index]),
                                      // subtitle: Text('Subtitle of Item $index'),
                                      // leading: Icon(Icons.star), // Just an example icon
                                      onTap: () {
                                        // Action when this item is tapped
                                        print('Tapped on Item $index');
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 150,
                color: Colors.yellow,
                child: Row(
                  children: [
                    Container(
                      width: 100,color: Colors.grey,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEEK 4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: overWeightWeak2.length, // Set the number of items in the list
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 100,
                                    color: Colors.blue,
                                    height: 100,
                                    child: ListTile(
                                      title: Text(overWeightWeak2[index]),
                                      // subtitle: Text('Subtitle of Item $index'),
                                      // leading: Icon(Icons.star), // Just an example icon
                                      onTap: () {
                                        // Action when this item is tapped
                                        print('Tapped on Item $index');
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
