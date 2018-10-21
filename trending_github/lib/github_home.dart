import 'package:flutter/material.dart';
import 'package:trending_github/api_services.dart';
class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getRepositories();
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Trending repositories"),
        ),
        body: FutureBuilder(
            future: getRepositories(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => repoCard(
                    repolist: snapshot.data[index],
                  ),
                );
              }

              else {
                return CircularProgressIndicator();
              }
            }

        )


    );
  }
}


class repoCard extends StatelessWidget{

  final repolist;
  repoCard(
  {
    @required this.repolist});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    getAvatar(){
      return CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(repolist.avatar),
      );
    }
    getRepoInfo(){
      return Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.blueGrey[800], ),
                children: <TextSpan>[
                  TextSpan(text: '${repolist.username}/',
                      style:TextStyle(fontWeight: FontWeight.bold) ),
                  TextSpan(text: repolist.repo.name, ),
                ]
              ),
            ),
            Text("Loreum ipsom Description"),
          ],
        ),
      );
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getAvatar(),
            SizedBox(width: 10.0,),
            getRepoInfo(),
          ],
        ),
      ),
    );
  }

}