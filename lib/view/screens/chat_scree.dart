import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:talk_tryst/constants/constants.dart';
import 'package:talk_tryst/controller/basic_provider.dart';
import 'package:talk_tryst/controller/firebase_provider.dart';
import 'package:talk_tryst/model/user_model.dart';
import 'package:talk_tryst/services/auth/auth_services.dart';
import 'package:talk_tryst/services/chat/chat_services.dart';
import 'package:talk_tryst/view/screens/jassim/chat_buble.dart';
import 'package:talk_tryst/view/screens/jassim/image_selector_dialog.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.user});
  final UserModel user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController messagecontroller = TextEditingController();
  AuthenticationService service = AuthenticationService();

  @override
  void initState() {
    super.initState();

    final currentuserid = service.authentication.currentUser!.uid;
    Provider.of<FirebaseProvider>(context, listen: false)
        .getMessages(currentuserid, widget.user.userId!);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: BGColors.BackGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  Text(
                    widget.user.userName!,
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Provider.of<FirebaseProvider>(context, listen: false)
                            .clearChat(service.authentication.currentUser!.uid,
                                widget.user.userId!);
                      },
                      icon: const Icon(Icons.clear_all_outlined))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    // messages container
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(239, 237, 247, 1),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(35))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ChatBubble(service: service, size: size),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 5,
                    right: 5,
                    child: Container(
                      // chating field
                      width: size.width * 0.4,
                      height: size.height * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          // IconButton(
                          //     onPressed: () {
                          //       showDialog(
                          //         context: context,
                          //         builder: (context) {
                          //           final pro =
                          //               Provider.of<BasicProvider>(context);
                          //           return ImageSelectorDialog(
                          //             pro: pro,
                          //             size: size,
                          //             recieverId: widget.user.userId!,
                          //           );
                          //         },
                          //       );
                          //     },
                          //     icon: Image.asset(
                          //       'aassets/files.png',
                          //       height: 30,
                          //     )),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 18),
                                controller: messagecontroller,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    filled: true,
                                    fillColor:
                                        const Color.fromRGBO(239, 237, 247, 1)),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                sendMessage();
                              },
                              icon: const Icon(
                                Icons.send_rounded,
                                color: Colors.amber,
                                size: 30,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  sendMessage() async {
    if (messagecontroller.text.isNotEmpty) {
      await ChatService()
          .sendMessage(widget.user.userId!, messagecontroller.text, "text");
      messagecontroller.clear();
    }
  }
}
