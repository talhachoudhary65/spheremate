import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xff242E5B),
        title: const Text(
          "MESSAGES",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        leadingWidth: 60,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(color: Colors.white24, height: 1),
            SizedBox(height: 10,),
            // Search bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            const Divider(color: Colors.white24, height: 1),
            SizedBox(height: 2,),
            // Slidable message list item
            SizedBox(
              height: 80,
              child: ListView(
                children: [
                  Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF50E3C1),
                          foregroundColor: Colors.white,
        
                          label: '',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF21C19C),
                          foregroundColor: Colors.white,
                          icon: Icons.delete_outline_sharp,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: ListTile(
                      // title:Text(
                      //   'Talha Ashfaq',
                      //   style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),
                      //
                      // ),
                      title: Row(
                        children: [
                          Text(
                            'Talha Ashfaq',
                            style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),
        
                          ),
                          SizedBox(width: 130,),
                          Text(
                            '5m ago',
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
        
                          ),
        
                        ],
                      ),
                      subtitle: const Text(
                        'Lorem ipsum dolor sit amet, consectetuer adip\niscing elit, sed diam nonummy nibh euismo',
                        style: TextStyle(color: Colors.white70,fontSize: 13),
                      ),
                      leading: Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/pic.png"),
                                fit: BoxFit.cover, // optional: adjusts how the image fits
                              ),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff50E3C1),
                              ),
                            ),
                          ),
        
                        ],
                      ),
        
                      // leading: CircleAvatar(
                      //   radius: 25,
                      //   backgroundColor: Colors.white,
                      //   child: Icon(Icons.person, color: Color(0xff50E3C1)),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white24, height: 10),
            SizedBox(height: 2,),
            // Slidable message list item
            SizedBox(
              height: 80,
              child: ListView(
                children: [
                  Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF50E3C1),
                          foregroundColor: Colors.white,
        
                          label: '',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF21C19C),
                          foregroundColor: Colors.white,
                          icon: Icons.delete_outline_sharp,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: ListTile(
        
                      title: Row(
                        children: [
                          Text(
                            'Hanzla Ashfaq',
                            style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),
        
                          ),
                          SizedBox(width: 115,),
                          Text(
                            '2m ago',
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
        
                          ),
        
                        ],
                      ),
                      subtitle: const Text(
                        'Lorem ipsum dolor sit amet, consectetuer adip\niscing elit, sed diam nonummy nibh euismo',
                        style: TextStyle(color: Colors.white70,fontSize: 13),
                      ),
                      leading: Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/pic.png"),
                                fit: BoxFit.cover, // optional: adjusts how the image fits
                              ),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff50E3C1),
                              ),
                            ),
                          ),
        
                        ],
                      ),
        
                      // leading: CircleAvatar(
                      //   radius: 25,
                      //   backgroundColor: Colors.white,
                      //   child: Icon(Icons.person, color: Color(0xff50E3C1)),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white24, height: 10),
            SizedBox(height: 2,),
            // Slidable message list item
            SizedBox(
              height: 80,
              child: ListView(
                children: [
                  Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF50E3C1),
                          foregroundColor: Colors.white,
        
                          label: '',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF21C19C),
                          foregroundColor: Colors.white,
                          icon: Icons.delete_outline_sharp,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: ListTile(
        
                      title: Row(
                        children: [
                          Text(
                            'Uxma',
                            style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),
        
                          ),
                          SizedBox(width: 190,),
                          Text(
                            '10m ago',
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
        
                          ),
        
                        ],
                      ),
                      subtitle: const Text(
                        'Lorem ipsum dolor sit amet, consectetuer adip\niscing elit, sed diam nonummy nibh euismo',
                        style: TextStyle(color: Colors.white70,fontSize: 13),
                      ),
                      leading: Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/pic.png"),
                                fit: BoxFit.cover, // optional: adjusts how the image fits
                              ),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff50E3C1),
                              ),
                            ),
                          ),
        
                        ],
                      ),
        
                      // leading: CircleAvatar(
                      //   radius: 25,
                      //   backgroundColor: Colors.white,
                      //   child: Icon(Icons.person, color: Color(0xff50E3C1)),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white24, height: 10),
            SizedBox(height: 2,),
            // Slidable message list item
            SizedBox(
              height: 80,
              child: ListView(
                children: [
                  Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF50E3C1),
                          foregroundColor: Colors.white,
        
                          label: '',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF21C19C),
                          foregroundColor: Colors.white,
                          icon: Icons.delete_outline_sharp,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: ListTile(
        
                      title: Row(
                        children: [
                          Text(
                            'Ahmad',
                            style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),
        
                          ),
                          SizedBox(width: 185,),
                          Text(
                            '15m ago',
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
        
                          ),
        
                        ],
                      ),
                      subtitle: const Text(
                        'Lorem ipsum dolor sit amet, consectetuer adip\niscing elit, sed diam nonummy nibh euismo',
                        style: TextStyle(color: Colors.white70,fontSize: 13),
                      ),
                      leading: Column(
                        children: [
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/pic.png"),
                                fit: BoxFit.cover, // optional: adjusts how the image fits
                              ),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff50E3C1),
                              ),
                            ),
                          ),
        
                        ],
                      ),
        
                      // leading: CircleAvatar(
                      //   radius: 25,
                      //   backgroundColor: Colors.white,
                      //   child: Icon(Icons.person, color: Color(0xff50E3C1)),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white24, height: 10),
          ],
        ),
      ),
    );
  }
}
