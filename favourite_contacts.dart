import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/screens/chat_screens.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.9),
                ),
                IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    color: Colors.deepPurple,
                    onPressed: () {})
              ],
            ),
          ),
          Container(
              height: 125.0,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favourites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: favourites[index],
                          ),
                        )),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 33.0,
                            backgroundImage:
                                AssetImage(favourites[index].imageUrl),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            favourites[index].name,
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
