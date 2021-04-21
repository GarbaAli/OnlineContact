import 'package:contact_online/constants.dart';
import 'package:contact_online/signin.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: <Widget>[

          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/login.jpg"),
                  fit: BoxFit.cover
                ),
              ),
             ),
            ),

          Expanded(  
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Les 2 lignes de texte
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "BIEVENUE\n",
                        // ignore: deprecated_member_use
                        style: Theme.of(context).textTheme.display1,
                         ),

                         // ignore: deprecated_member_use
                         TextSpan(text: "DANS VOTRE REPERTOIRE EN LIGNE", style: Theme.of(context).textTheme.headline),
                    ]
                  )
                ),
                //FIn des 2 lignes de textes
                
                FittedBox(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                      ));
                  },
                   child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                      padding:EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),

                      child: Row(
                        children: <Widget>[
                          Text(
                            "LANCEZ-VOUS!",
                            style: Theme.of(context).textTheme.button.copyWith(
                              color: Colors.white70
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],

                      ),
                      
                    ),
                ),
                ),
              ],
            ),
          ),
        ],
        )
      
    );
  }
}