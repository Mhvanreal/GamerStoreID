
import 'package:flutter/material.dart';
import 'package:project/widgets/joki.dart';
import 'package:project/widgets/populer_widgets.dart';
import 'package:project/widgets/pulsa_token.dart';
import '../widgets/home_buttom.dart';
import '../widgets/items_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
     _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
     _tabController.addListener(_handleTableSelection);
     super.initState();
  }
  _handleTableSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        
      });
    }
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff22577A),
      body: SafeArea(
        
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Icon (
                    Icons.sort,
                    color: Colors.white.withOpacity(0.5),
                    size: 35,
                  ),
                ),
                 InkWell(
                  onTap: (){},
                  child: Icon (
                    Icons.notifications_active,
                    color: Colors.white.withOpacity(0.5),
                    size: 35,
                  ),
                ),
              ],
            )
            ),    
            SizedBox(height: 30),
  Padding(
  padding: EdgeInsets.symmetric(horizontal: 15),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hi, Sobat Gamers",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        "Selamat menikmati Jasa Kami!",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w100,
        ),
      ),
    ],
  ),
),
Container(
  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
  width: MediaQuery.of(context).size.width,
  height: 55,
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Color(0xff38A3A5),
    borderRadius: BorderRadius.circular(10),
  ),
  child: TextFormField(
    
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: "Cari Sesuatu...",
      hintStyle:TextStyle (
        color: Colors.white,
      ),
      prefixIcon: Icon(Icons.search, size: 30,  color: Colors.white,),
    ),
   ),
),
     TabBar(
      controller: _tabController,
      labelColor: Color(0xffC7F9CC),
      unselectedLabelColor: Colors.white,
      isScrollable: true,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: Color(0xffC7F9CC),
        ),
        insets: EdgeInsets.symmetric(horizontal: 16),
      ),
      labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      labelPadding: EdgeInsets.symmetric(horizontal: 20),
      tabs: [
        Tab(
          text: "🔥Populer"
          ),
        Tab(
          text: "Top Up Games"
          ),
          Tab(
          text: "Joki Rank"
          ),
          Tab(
          text: "Pulsa,Data & Tagihan"
          ),
     ],
     ),
      SizedBox(height: 10),
      Center(
       child: [ 
        Populerw(),
        ItemsWidget(),
        listJoki(),
        tokens(),
       ][_tabController.index],
      ),
          ],
         ),
        ),
        ), 
        bottomNavigationBar: HomeBottomBar() ,
    );
  }
}