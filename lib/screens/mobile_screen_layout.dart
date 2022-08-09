import 'package:flutter/material.dart';
import 'package:waflutter/colors.dart';
import 'package:waflutter/responsive/widgets/contacts_list.dart';
class MobileLayoutScreen extends StatelessWidget {
  MobileLayoutScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: Text('WhatsApp',style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.grey),),
           IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.grey),),
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ]),
        ),
        body: ContactsList(),
      ),
    );
  }
}