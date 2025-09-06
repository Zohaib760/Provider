import 'package:flutter/material.dart';
import 'package:provider/provider.dart%20';
import 'package:provider_tutorial/Provider/favorite_provider.dart';
import 'package:provider_tutorial/Screens/myfavorite.dart';
class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context , listen: false);
    print("BUikd");
    return  Scaffold(
      appBar:AppBar(
        title: Text("Favorite"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Myfavorite()));
          }, icon: Icon(Icons.favorite))
        ],
      ) ,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext , index){
                  return Consumer<FavoriteProvider>(builder: (context , value, child){
                    return ListTile(
                      title: Text("Item "+index.toString()),
                      trailing:  favoriteProvider.selectedItem.contains(index)? Icon(Icons.favorite): Icon(Icons.favorite_outline),
                      onTap: (){
                        if(favoriteProvider.selectedItem.contains(index)){
                          favoriteProvider.removeItem(index);
                        }else{
                          favoriteProvider.addItem(index);
                        }
                       
                      },
                    );
                  });
                }
                ),
          ),
        ],
      ),
    );
  }
}


