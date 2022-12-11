import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double actionBar = 56;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //Custom AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: actionBar,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              tabW(Icons.download, true),
              Expanded(child: Container()),
              tabW(Icons.download_done_rounded, false),
              Expanded(child: Container()),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
      body: ListView(
        children: [
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
          listWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
    );
  }

  Container tabW(IconData icons, bool selected) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          color: selected ? Colors.blue : Colors.grey),
      child: Icon(
        icons,
        size: 18,
        color: Colors.black,
      ),
    );
  }
}

class listWidget extends StatelessWidget {
  const listWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Image.asset("images/image_icon.png"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Flutter SDK latest.zip',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 4,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            "158 MB / 800 MB",
                            style: TextStyle(
                                color: Color.fromARGB(255, 185, 185, 185),
                                fontSize: 12),
                          ),
                        ),
                        Text(
                          "To'xtatildi",
                          style:
                              TextStyle(color: Color(0xFFB9B9B9), fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 0.5)),
                child: const Icon(
                  Icons.play_arrow_outlined,
                  color: Color(0xFFB9B9B9),
                ))
          ],
        ),
      ),
    );
  }
}

//0769520/110