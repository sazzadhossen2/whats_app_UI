import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsession/screen_two.dart';

void main(){
  runApp(Myapps());
}
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:Homepage.id ,
      routes: {
        Homepage.id:(context)=>Homepage(),
      },
    );
  }
}
class Homepage extends StatelessWidget {
  static const String id='Home_page';
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child:  Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xff128C7E),
         title: Text("WhatsApp"),
       bottom: TabBar(
         tabs: [
           Tab(child: Icon(Icons.camera_alt)),
           Tab(child:Text("Chat")),
           Tab(child:Text("Status")),
           Tab(child:Text("Call")),
         ],
         
       ),
       actions:  [
         Icon(Icons.search),
         SizedBox(width: 10,),

         PopupMenuButton(
             icon: Icon(Icons.more_vert),
             itemBuilder: (context){
           return[
             PopupMenuItem(
             value: 1,
               child: Text("New Group")),
             PopupMenuItem(child: Text("Setting"),value: '2',
             ),
             PopupMenuItem(child: Text("Logut")),
           ];
         })
       ],
       ),
          body: TabBarView(
            children: [
              Text("Cemra"),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                ),
                  title: Text("Sazzad Hossen"),
                  subtitle: Text("Whats up  dear"),
                  trailing: Text("7.26 pm"),

                );
              }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                      ),
                      title: Text("Sazzad Hossen"),
                      subtitle: Text("50m ago"),


                    );
                  }),
              ListView.builder(itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),

                  ),
                  title: Text("Sazzad Hossen"),
                  trailing: Icon(index/2==0? Icons.phone:Icons.video_call),
                  subtitle: Text(index/2==0? "you missed audio call":"call time 12.30"),
                );
              })
            ],
            
          ),

    ) );

  }
}

