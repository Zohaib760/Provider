

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart%20';

import '../Provider/favorite_provider.dart';

class Myfavorite extends StatefulWidget {
  const Myfavorite({super.key});

  @override
  State<Myfavorite> createState() => _MyfavoriteState();
}

class _MyfavoriteState extends State<Myfavorite> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorites"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Consumer<FavoriteProvider>(builder: (context , value, child){
            return ListView.builder(
                itemCount: favoriteProvider.selectedItem.length,
                itemBuilder: (context , index){
                  return ListTile(
                    title: Text("Item "+index.toString()),
                    trailing: favoriteProvider.selectedItem.contains(index)? Icon(Icons.favorite): Icon(Icons.favorite_outline),
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

    )
    )
        ],
      ),
    );
  }
}
