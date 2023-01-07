import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Groups",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
      child: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromARGB(255, 174, 237, 176)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            color: Colors.green.shade900,
                          ),
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        ListTile(
                          title: Text(
                            "Family",
                            style: TextStyle(
                                color: Colors.green[900],
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "16 members",
                            style: TextStyle(color: Colors.green[900]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.pink.shade100),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add),
                            color: Colors.pink[600],
                          ),
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        ListTile(
                          title: Text(
                            "Friends",
                            style: TextStyle(
                                color: Colors.pink[600],
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "24 members",
                            style: TextStyle(color: Colors.pink[600]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blue.shade100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                  width: 10,
                ),          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1,  vertical: 1),
                  child: ListTile(
                    leading: InkWell(
                      onTap: (){},
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[900],
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,
                        color: Colors.white,)),
                      ),
                    ),  
                    ),
                ),
                const SizedBox(
                  height: 1,
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,  vertical: 1),
                    child: Text(
                      "New Group",
                      style: TextStyle(color: Colors.blue[900],
                      fontWeight: FontWeight.w900, fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
              ],
            ),
          ),
        ]),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            title: Text(
              "Favourites",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink[200],
              child: Text("S", style:
                TextStyle(color: Colors.pink[800], 
                fontWeight: FontWeight.w900, 
                fontSize: 20),
              ),
            ),
            title: const Text(
              "Saad",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text(
              "Home",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.pink.shade800,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink[200],
              child: Text(
                "A",
                style:
                TextStyle(color: Colors.pink[800], 
                fontWeight: FontWeight.w900, 
                fontSize: 20),
              ),
            ),
            title: const Text(
              "Ahmed",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text(
              "Office",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.pink.shade800,
            ),
          ),
        ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
              IconButton(
              onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text("Add Favourite",
                  style: TextStyle(color: Colors.blue[900], fontSize: 20)),
                )
              ],
            ),
          ),
      ]),
    ));
  }
}
