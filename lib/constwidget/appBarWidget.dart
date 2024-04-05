
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vallindia_dub/authentication/authFunctions/googleSigninFunc.dart';
import 'package:vallindia_dub/const%20variable/themecolor.dart';


class appBarWidget extends StatelessWidget implements PreferredSizeWidget{
  
  final mq;
  final String title;
  final Color appbarbackground;
  // final Image? profilepicture;
  
  

  appBarWidget({
    Key? key,
    required this.mq, 
    required this.title, 
    required this.appbarbackground, 
    // required this.profilepicture,

  }): super(key: key);
  
  @override
  Size get preferredSize {
    return Size.fromHeight(kToolbarHeight);
  }

  

  @override

  Widget build(BuildContext context) {
    String? defaultProfilePicture = 'assets/Categories/Academic.png';
    // String  currentprofilePicture = (profilepicture != null)
    //     ? profilepicture.toString()  // If user is logged in, has profile picture, and profilepicture is not null, display profile picture
    //     : defaultProfilePicture; // other this picture

  
    return AppBar(
      backgroundColor:appbarbackground,    // Color.fromARGB(255, 248, 232, 186),
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left:1.0,right:1.0,top:2.0,bottom:1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: mq.height*0.06,
                  width:mq.height*0.06,
                  decoration:BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:2,
                      blurRadius:2,
                      offset: Offset(0, 6)
                    )
                    ]
                  ),
                  
                  child:Image.asset('assets/Banners/vall.png')),
                SizedBox(width: 10,),
                // Text(title,style: TextStyle(color: color2, fontSize:mq.height * 0.025),),
              ],
            ),
            
            Consumer<AuthProvider>(
              builder: (context, value, child){
                final url = Uri.parse('${value.user.photoUrl}');
                print('url: $url');
                // 
                return Container(
                height: mq.height*0.06,
                width:mq.height*0.06,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color:Colors.black,),
                child:url.toString()!=null?
                ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.network(url.toString(),fit: BoxFit.cover)):
               Icon(Icons.verified_user)
                // ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.asset(defaultProfilePicture,fit: BoxFit.cover,))
                );
              },
               
            ),
        
          ],
        ),
      ),
      
        
    
    );
  }
}
