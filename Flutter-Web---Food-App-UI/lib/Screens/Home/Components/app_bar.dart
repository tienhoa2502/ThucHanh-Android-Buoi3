import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class CustomAppBar extends StatelessWidget {
  void _showPopupMenu(BuildContext context) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu<String>(
      context: context,
      position: position,
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: "Home",
          child: Text("Home"),
        ),

        PopupMenuItem<String>(
          value: "Contact",
          child: Text("Contact"),
        ),
        PopupMenuItem<String>(
          value: "Login",
          child: Text("Login"),
        ),
      ],
      elevation: 8,
    ).then<void>((String? itemSelected) {
      if (itemSelected != null) {
        // Xử lý khi mục được chọn
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      
      child: Row(
        children: <Widget>[
          SizedBox(width: 10),
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              _showPopupMenu(context);
            },
            child: Text(
              "Foodi".toUpperCase(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 80),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              // child: Row(
              //   children: <Widget>[
              //     SizedBox(width: 15,),
              //     Text(
              //       "Get Started".toUpperCase(),
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 14,
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Container(
              //       padding: EdgeInsets.all(10),
              //       height: 38,
              //       width: 38,
              //       decoration: BoxDecoration(
              //         color: kPrimaryColor,
              //         shape: BoxShape.circle,
              //       ),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           color: Color(0xFF372930),
              //           shape: BoxShape.circle,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ),
          )
        ],
      ),
    );
  }
}
