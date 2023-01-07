import 'package:call_app/components/recents_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Recents extends StatefulWidget {
  const Recents({super.key});

  @override
  State<Recents> createState() => _RecentsState();
}

class _RecentsState extends State<Recents> {
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
                  "All",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Missed",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                )),
          ],
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body:
            //   ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("S", style: TextStyle(color: Colors.grey[700]),),),
            //   title: const Text("Saad"),
            //   subtitle: const Text("2 min ago"),
            //   trailing: IconButton(icon: const Icon(Icons.call, color: Colors.red,), onPressed: (){}),
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("R", style: TextStyle(color: Colors.grey[700])
            //   ),),
            //   title: const Text("Rasheed"),
            //   subtitle: const Text("12 min ago"),
            //   trailing: IconButton(icon: const Icon(Icons.call_received, color: Colors.green), onPressed: (){},),
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("H", style: TextStyle(color: Colors.grey[700])),),
            //   title: const Text("Hassan"),
            //   subtitle: const Text("5 min ago"),
            //   trailing: IconButton(icon: const Icon(Icons.call_made, color: Colors.green,), onPressed: (){},),
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("R", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Rafay"), 
            //   subtitle: const Text("8 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_made, color: Colors.green,), onPressed: (){},),
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("A", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Ahmed"), 
            //   subtitle: const Text("1 hr ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_end, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("S", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Shahzaib"), 
            //   subtitle: const Text("2 hr ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call, color: Colors.red,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("M", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Muneeb"), 
            //   subtitle: const Text("15 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_end, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            // leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("A", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Ali"), 
            //   subtitle: const Text("30 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_made, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("O", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Owais"), 
            //   subtitle: const Text("54 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_missed, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("A", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Asif"), 
            //   subtitle: const Text("51 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_received, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading:  CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("S", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Suleman"), 
            //   subtitle: const Text("1 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call, color: Colors.red,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("M", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Mustufa"), 
            //   subtitle: const Text("18 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_end, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("R", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Rooshan"), 
            //   subtitle: const Text("25 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_end, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("F", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Farzand"), 
            //   subtitle: const Text("1 hr ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_made, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("S", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Shariq"), 
            //   subtitle: const Text("2 hrs ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call, color: Colors.red,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("R", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Rauf"), 
            //   subtitle: const Text("Yesterday"), 
            //   trailing: IconButton(icon: const Icon(Icons.call, color: Colors.red,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.grey.shade400,child: Text("N", style: TextStyle(color: Colors.grey[700])),), 
            //   title: const Text("Naseem"), 
            //   subtitle: const Text("Yestarday"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_received, color: Colors.green,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 219, 239, 255),child: Text("+", style: TextStyle(color: Colors.blue[800])),), 
            //   title: const Text("+92 9515298546"), 
            //   subtitle: const Text("38 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_missed, color: Colors.red,), onPressed: (){},)
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 219, 239, 255),child: Text("+", style: TextStyle(color: Colors.blue[800])),), 
            //   title: const Text("+92 9489568518"), 
            //   subtitle: const Text("41 min ago"), 
            //   trailing: IconButton(icon: const Icon(Icons.call_missed, color: Colors.red,), onPressed: (){},)
            // ),
          ListView.builder(
          itemCount: calllist.length,
          itemBuilder: (context, i) {
          return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                foregroundColor: Colors.grey.shade700,
                child: Text("${calllist[i]["leading"]}"),
              ),
              title: Text("${calllist[i]["name"]}"),
              subtitle: Text("${calllist[i]["time"]}"),
              trailing: IconButton(
                        icon: const Icon(
                        Icons.call_end,
                        color: Colors.green,),
                        onPressed: () {},
    ),
    );
    })
    );
}}