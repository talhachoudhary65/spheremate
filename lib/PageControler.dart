import 'package:flutter/material.dart';

class PageViewClass extends StatefulWidget {
  const PageViewClass({super.key});

  @override
  State<PageViewClass> createState() => _PageViewClassState();
}

class _PageViewClassState extends State<PageViewClass> {
  List<String> headers = ["Followers", "Following"];
  PageController pageCT = PageController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242E5B),
      appBar: AppBar(
        backgroundColor: const Color(0xff242E5B),
        centerTitle: false,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        leadingWidth: 60,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(2, (index) {
              return InkWell(
                onTap: () {
                  currentIndex=index;
                  pageCT.animateToPage(currentIndex, duration: Duration(
                    microseconds: 500
                  ), curve: Curves.easeIn);
                  setState(() {

                  });

                },
                child: Text(
                  headers[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }),
          ),
          Divider(indent: 12, endIndent: 20),
          Expanded(
            child: PageView(
              controller: pageCT,
              onPageChanged: (value) {
                currentIndex=value;
                setState(() {
                });
              },
              children: [
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      title: Text("this is Title"),
                      subtitle: Text("This is subTitle"),
                      trailing: Icon(Icons.import_contacts),
                    );
                    },
                ),
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                          title: Text("this is Title"),
                          subtitle: Text("This is subTitle"),
                          trailing: Icon(Icons.import_contacts),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
