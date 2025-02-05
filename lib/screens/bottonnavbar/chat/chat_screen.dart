import 'package:flutter/material.dart';
import 'package:messanger_app_ui/data/model/contact.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController placeholderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? AppColor.scafoldDark
              : AppColor.scafoldLight,
          title: UiHelper.customText(text: "Chats", context: context),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_chat_unread_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Column(
                      children: [
                        UiHelper.assetImage(
                            image: "assets/images/Avatar (7).png"),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper.customText(
                            text: "Your Story", context: context)
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: listOfChats.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              height: 56,
                              width: 56,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  UiHelper.assetImage(
                                      image: listOfChats[index].image),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  UiHelper.customText(
                                    text: listOfChats[index].name,
                                    context: context,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              UiHelper.customTextField(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColor.hintTextDarkMode
                        : AppColor.hintTextLightMode,
                  ),
                  context: context,
                  hintText: "Paceholder",
                  keyboardType: TextInputType.text,
                  controller: placeholderController),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listOfChats.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            UiHelper.assetImage(
                                image: listOfChats[index].image,
                                height: 56,
                                width: 56),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                UiHelper.customText(
                                    text: listOfChats[index].name,
                                    context: context,
                                    fontsize: 14,
                                    fontweight: FontWeight.w600),
                                UiHelper.customText(
                                    text: listOfChats[index].lastSeen,
                                    context: context,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? AppColor.hintTextDarkMode
                                        : AppColor.hintTextLightMode,
                                    fontsize: 12,
                                    fontweight: FontWeight.w400)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
