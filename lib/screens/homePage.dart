import 'package:flutter/material.dart';
import 'package:mental_health_app/widgets/feelingList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/images/profile.jpeg'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xFF573926),
                  size: 33,
                )),
          ),
        ],
      ),

      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Good Afternoon,',
                        style: TextStyle(
                          color: Color(0xFF371B34),
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Sarina!',
                        style: TextStyle(
                          color: Color(0xFF371B34),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'How are you feeling today ?',
                        style: TextStyle(
                          color: Color(0xFF371B34),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 84,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 60.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: items[index].color,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              items[index].imagePath,
                              width: 33.18,
                              height: 33.18,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 325,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFEF3E7),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            '1 on 1 Sessions',
                            style: TextStyle(
                                color: Color(0xFF573926),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Let’s open up to the things that \nmatter the most ',
                            style: TextStyle(
                              color: Color(0xFF573926),
                              fontSize: 12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset(
                              'assets/images/Meetup.png',
                              height: 80,
                              width: 86,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Book Now',
                            style: TextStyle(
                                color: Color(0xFFFE8235),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.date_range,
                            color: Color(0xFFFE8235),
                            size: 17,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Row(
                children: [
                  Container(
                    width: 155,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF4F3F1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/journal.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Journal',
                          style: TextStyle(
                            color: Color(0xFF573926),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 155,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF4F3F1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/article.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Library',
                          style: TextStyle(
                            color: Color(0xFF573926),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                children: [
                  Container(
                    width: 340,
                    height: 79,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF4F4F4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '“It is better to conquer yourself than\nto win a thousand battles”',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset('assets/images/Vector.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 325,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF55A06F),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Plan Expired',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Get back chat access and\nsession credits',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Image.asset(
                              'assets/images/Meditation.png',
                              height: 80,
                              width: 86,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Buy More',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFFFFFFF),
                            size: 17,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Home.png',
                height: 52,
                width: 52,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Video.png',
                height: 52,
                width: 52,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Chat.png',
                height: 52,
                width: 52,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Users.png',
                height: 52,
                width: 52,
              ),
              label: ''),
        ],
      ),
    );
  }
}
