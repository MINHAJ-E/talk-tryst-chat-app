import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/controller/firebase_provider.dart';
import 'package:talk_tryst/model/user_model.dart';
import 'package:talk_tryst/services/auth/auth_services.dart';
import 'package:talk_tryst/view/home/widget/contact_avatars.dart';
import 'package:talk_tryst/view/screens/chat_scree.dart';
import 'package:talk_tryst/view/signup/create_account.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    AuthenticationService service = AuthenticationService();
    final val = Provider.of<FirebaseProvider>(context);
    final index = val.searchedusers.isNotEmpty ? 0 : 0;
    final userdetailss =
        val.searchedusers.isNotEmpty ? val.searchedusers[index] : null;
    // UserModel Userrrr = donatorDocs[index].data();
    return Scaffold(
      backgroundColor: BGColors.BackGroundColor,
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
                  "Home",
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

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SetProfile(
                        userdetails: userdetailss!,
                      ),
                    ));
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
            child:
                // Consumer<FirebaseProvider>(
                // builder: (context, values, child) =>
                TextFormField(
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
            // ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.12,
                width: size.width * 0.9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildContactAvatar('Alla', 'status image1.png'),
                    buildContactAvatar('July', 'status image2.png'),
                    buildContactAvatar('Mikle', 'status image3.png'),
                    buildContactAvatar('Kler', 'status image4.png'),
                    buildContactAvatar('Moane', 'status image5.png'),
                    buildContactAvatar('Julie', 'status image6.png'),
                    buildContactAvatar('Allen', 'status image1.png'),
                    buildContactAvatar('John', 'status image2.png'),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: BGColors.BGBTColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Consumer<FirebaseProvider>(
                builder: (context, value, child) {
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: value.searchedusers.length,
                    itemBuilder: (context, index) {
                      final userdetails = value.searchedusers[index];
                      if (userdetails.userName !=
                          FirebaseAuth.instance.currentUser?.uid) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                splashColor:
                                    const Color.fromRGBO(41, 15, 102, .3),
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatScreen(
                                      user: userdetails,
                                    ),
                                  ),
                                ),
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage(
                                      'assets/status image2.png',
                                    ),
                                  ),
                                  title: Text(
                                    userdetails.userName!,
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    // "df",
                                    userdetails.phoneNumber!,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.only(left: 25, right: 25),
                            //   child: Divider(
                            //     height: 1,
                            //     color: Colors.grey.withOpacity(0.5),
                            //   ),
                            // )
                          ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
