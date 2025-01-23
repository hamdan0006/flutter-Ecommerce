import 'package:app/constraints.dart';
import 'package:app/models/products.dart';
import 'package:app/providers/favourite_provider.dart';
import 'package:flutter/material.dart';

class DetailScreenAppbar extends StatelessWidget{
  final Product product;
  const DetailScreenAppbar({super.key,required this.product});
  @override
  Widget build(BuildContext context) {
    final provider =FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15)
            ),
              onPressed: (){
              Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)

          ),
          Spacer(),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: kcontentColor,
                  padding: const EdgeInsets.all(15)
              ),
              onPressed: (){},
              icon: Icon(Icons.share)

          ),
          SizedBox(width: 15,),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: kcontentColor,
                  padding: const EdgeInsets.all(15)
              ),
              onPressed: (){
                provider.toggleFavorite(product);
              },
              icon: Icon(
                provider.isExist(product)
                  ?Icons.favorite :
                  Icons.favorite_border,
                color: Colors.black,
                size: 25,
              )

          ),

        ],

      ),

    );

  }

}