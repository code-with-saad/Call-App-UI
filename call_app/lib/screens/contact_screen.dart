import 'package:call_app/components/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController contactName = TextEditingController();
  TextEditingController contactNum = TextEditingController();
  TextEditingController contactdp = TextEditingController();

  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      contactlist.add({
        "leading": contactdp.text,
        "title": contactName.text,
        "subtitle": contactNum.text,
      });
      contactName.clear();
      contactNum.clear();
      contactdp.clear();
    });
    print(contactlist);
  }

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      contactlist[index] = {
        "leading": contactdp.text,
        "title": contactName.text,
        "subtitle": contactNum.text
      };
      contactName.clear();
      contactNum.clear();
      contactdp.clear();
    });
    print(contactlist);
  }

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
                  "Contacts",
                  style: TextStyle(color: Colors.black, fontSize: 15),
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
      body: ListView.builder(
        itemCount: contactlist.length,
        itemBuilder: (context, i) {
          return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                foregroundColor: Colors.grey.shade700,
                child: Text("${contactlist[i]["leading"]}"),
              ),
              title: Text("${contactlist[i]["title"]}"),
              subtitle: Text("${contactlist[i]["subtitle"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      contactName.text = contactlist[i]['title'];
                      contactNum.text = contactlist[i]['subtitle'];
                      contactdp.text = contactlist[i]['leading'];
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Edit Name"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: contactName,
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Edit Name',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: contactNum,
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Edit Number',
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: contactdp,
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Edit Dp',
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  editContact(context, i);
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        contactlist.removeAt(i);
                      });
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade600,
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Add Contact"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: contactName,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Contact Name',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: contactNum,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Contact Number',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: contactdp,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Contact Dp',
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      addNewContact(context);
                    },
                  )
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
