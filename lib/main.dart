import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                color: Colors.grey,
              ),             
              Center(
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),

          // Buat bagian Search
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 12,
              bottom: 12,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          // Buat padding untuk bagian text 
          Padding(
            padding: EdgeInsetsGeometry.only(
              left: 24,
            ),
            child: Text(
              "Brand yang munking kamu suka",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          // Membuat container dengan Gridview
          Padding(
            padding: const EdgeInsets.all(24), 
            child: GridView(
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(), 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1, 
              ),
              children: [
                Container(color: Colors.grey),
                Container(color: Colors.grey),
                Container(color: Colors.grey),
              ],
            ),
          ),

          // Membuat container dengan Gridview
          Padding(
            padding: const EdgeInsets.all(24), 
            child: GridView(
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(), 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1, 
              ),
              children: [
                Container(color: Colors.grey),
                Container(color: Colors.grey),
                Container(color: Colors.grey),
              ],
            ),
          ),

          // Buat padding untuk bagian text
          Padding(
            padding: EdgeInsetsGeometry.only(
              left: 24,
            ),
            child: Text(
              "Berdasarkan Kategori",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          // Membuat container dengan Wrap agar dapat ditengah
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 48,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  height: 250, 
                  width: 150, 
                  color: Colors.grey,
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 150,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 250, 
                  width: 150, 
                  color: Colors.grey,
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 150,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


