import 'package:flutter/material.dart';
import 'package:profileui/clippath.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            color: Colors.black87,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  color: Colors.blue,
                  height: 120,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.transparent,
                    child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) => Colors.black87)),
                      onPressed: () {},
                      child: Text(
                        "following",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 350,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const CircleAvatar(
                    backgroundImage: AssetImage("images/profile.jpg")),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sudalaimani",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "Co founder",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/solo.jpg")),
                      Text(
                        "Snowy",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/shailesh.jpg")),
                      const Text(
                        "Sandy",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    children: [
                      Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black,
                  ),
                  const Column(
                    children: [
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black,
                  ),
                  const Column(
                    children: [
                      Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Posts",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Stamp Book",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Community",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: EdgeInsets.only(left: 10, right: 20),
                    child: Image.asset("images/samantha.jpg"),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset("images/shailesh.jpg"),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
