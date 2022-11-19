import 'package:fashionapp/appbar.dart';
import 'package:fashionapp/uppage.dart';
import 'package:flutter/material.dart';

import 'middle_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      bottomNavigationBar: TabBar(
        
        controller: tabController,
        tabs: const [

          Tab(icon: Icon(Icons.more, color: Colors.grey, size: 22,),),
          Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22,),),
          Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 22,),),
          Tab(icon: Icon(Icons.supervised_user_circle, color: Colors.grey, size: 22,),),
          
        

       


        ],
      ),
      body: ListView(
        children: const [UpPage(), MiddlePage()],
      ),
    );
  }
}
