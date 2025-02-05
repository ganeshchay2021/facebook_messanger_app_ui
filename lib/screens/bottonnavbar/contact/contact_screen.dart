import 'package:flutter/material.dart';
import 'package:messanger_app_ui/data/model/contact.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/screens/widgets/ui_helper.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
        title: UiHelper.customText(text: "Contact", context: context),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            UiHelper.customTextField(
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).brightness == Brightness.dark
                    ? AppColor.hintTextDarkMode
                    : AppColor.hintTextLightMode,
                size: 30,
              ),
              context: context,
              hintText: "Search",
              keyboardType: TextInputType.text,
              controller: searchController,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final contact = listOfContacts[index];
                    return InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            UiHelper.assetImage(
                                image: contact.image, height: 56, width: 56),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                UiHelper.customText(
                                    text: contact.name,
                                    context: context,
                                    fontsize: 14,
                                    fontweight: FontWeight.w600),
                                UiHelper.customText(
                                    text: contact.lastSeen,
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
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 0.5,
                    );
                  },
                  itemCount: listOfContacts.length),
            )
          ],
        ),
      ),
    );
  }
}
