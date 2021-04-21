import 'package:contact_online/constants.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(    //Une colone qui contient plusieurs enfants
        children: <Widget>[

          //Premier enfant de la colonne (image)
          Expanded( 
            flex: 3,
            child: Container(

              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage("assets/login.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),

              ),

            ),
            
            ),
          //Deuxieme enfant de la colonne (le formulaire et les btn)
          Expanded(
            flex: 4 ,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[

                  ///Premiere Ligne (LOG IN)
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween, // Disposer les 2 enfants de la ligne de part et
                      // dautre de la ligne
                      // 
                      children: <Widget>[
                        Text(
                          "LOG IN",
                          // ignore: deprecated_member_use
                          style:Theme.of(context).textTheme.display1,
                        ),
                        Text(
                          "LOG IN",
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                  ),

                Spacer(),
                //Deuxieme Ligne (Input Enail)
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon( // Declaration de l'icon @
                          Icons.alternate_email,
                          color: kPrimaryColor,
                        ),
                      ),

                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Votre Email",
                          ),
                        ),
                        
                        ),
                    ],
                    
                    ),
                ),

                   //Troisieme Ligne (Input Password)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon( // Declaration de l'icon @
                        Icons.lock,
                        color: kPrimaryColor,
                      ),
                    ),

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Votre Mot de passe",
                        ),
                      ),
                      
                      ),
                  ],
                  
                  ),

                Spacer(),
                  //Quatrieme Ligne (Icons)
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: <Widget>[

                      //Icon android englober dun cercle a trait fin avec une opacite de .5
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                           color: Colors.white.withOpacity(.5),
                          ),
                          ),

                          child: Icon(
                            Icons.android,
                            color: Colors.white.withOpacity(.5),
                          ),
                      ),
                      SizedBox(width: 25),
                      //Icon chat englober dun cercle a trait fin avec une opacite de .5
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                           color: Colors.white.withOpacity(.5),
                          ),
                          ),

                          child: Icon(
                            Icons.chat,
                            color: Colors.white.withOpacity(.5),
                          ),
                      ),

                      Spacer(),  //Deplacer le cercle a lextremiter droite de lecran

                      // Faire un cercle de couleur avec une fleche a linterieur
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),

                ],
              ),
            )
          )

        ],
      ),
    );
  }
}