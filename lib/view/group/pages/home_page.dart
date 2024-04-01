import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/services/auth/auth_services.dart';
import 'package:talk_tryst/view/group/helper/helper_function.dart';
import 'package:talk_tryst/view/group/pages/search_page.dart';
import 'package:talk_tryst/view/group/service/databse_service.dart';
import 'package:talk_tryst/view/group/widgets/group_tile.dart';
import 'package:talk_tryst/view/group/widgets/widgets.dart';

class GroupHomePage extends StatefulWidget {
  const GroupHomePage({Key? key}) : super(key: key);

  @override
  State<GroupHomePage> createState() => _GroupHomePageState();
}

class _GroupHomePageState extends State<GroupHomePage> {
  String userName = "hi";
  String email = "";
  Stream? groups;
  bool _isLoading = false;
  String groupName = "";
  AuthenticationService authService = AuthenticationService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gettingUserData();
  }

  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmailSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserNameSF().then((value) {
      setState(() {
        userName = value!;
      });
    });
    //getting list of snapshot in stream
    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getUserGroup()
        .then((snapshot) {
      setState(() {
        groups = snapshot;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     IconButton(
      //         onPressed: () {
      //           nextScreen(context, SearchPage());
      //         },
      //         icon: Icon(Icons.search))
      //   ],
      //   centerTitle: true,
      //   backgroundColor: BGColors.BackGroundColor,
      //   elevation: 0,
      //   title: Text(
      //     "Community",
      //     style: TextStyle(fontSize: 27, color: Colors.white),
      //   ),
      // ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.1,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // CircleAvatar(
                //   backgroundColor: Colors.black,
                //   child: IconButton(
                //     onPressed: () {},
                //     icon: const Icon(
                //       Icons.search,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                Text(
                  "Groups",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.06,
                  ),
                ),
                GestureDetector(
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/image.png"),
                  ),
                  onTap: () {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) => alert(context),
                    // );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onChanged: (value) {
                // values.searchUser(value);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: BGColors.BGBTColor,
                hintText: 'Search ',
                hintStyle: const TextStyle(color: Colors.white), // Fix is here
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: BGColors.BGBTColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: groupList())),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: BGColors.BackGroundColor,
        onPressed: () {
          popUpDialog(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }

  popUpDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: ((context, setState) {
            return AlertDialog(
              title: Text(
                "Create a group",
                textAlign: TextAlign.left,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : TextField(
                          onChanged: (val) {
                            setState(() {
                              groupName = val;
                            });
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (groupName != "") {
                      setState(() {
                        _isLoading = true;
                      });
                      DatabaseService(
                              uid: FirebaseAuth.instance.currentUser!.uid)
                          .createGroup(userName,
                              FirebaseAuth.instance.currentUser!.uid, groupName)
                          .whenComplete(() {
                        _isLoading = false;
                      });
                      Navigator.of(context).pop();
                      showSnackBar(context, Colors.green, "Group created");
                    }
                  },
                  child: Text(
                    "Create",
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            );
          }),
        );
      },
    );
  }

  groupList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('groups').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.pink,
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          if (snapshot.hasData) {
            var data = snapshot.data!.docs;
            if (data.isNotEmpty) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  var groupData = data[index].data() as Map<String, dynamic>;
                  // Add null checks for groupId, groupName, and userName
                  var groupId = groupData['groupId'] ?? '';
                  var groupName = groupData['groupName'] ?? '';
                  var userName = groupData['userName'] ?? '';
                  return GroupTile(
                    groupId: groupId,
                    groupName: groupName,
                    userName: userName,
                  );
                },
              );
            } else {
              return noGroupWidget(context);
            }
          } else {
            return noGroupWidget(context);
          }
        }
      },
    );
  }

  Widget noGroupWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              popUpDialog(context);
            },
            child: Icon(
              Icons.add_circle,
              color: Colors.grey,
              size: 75,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "You have not joined any group tap on add or search icon to create or join a group",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
