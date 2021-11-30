import 'package:flutter/material.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
 body: ListView.builder(
  itemCount: 5,
  itemBuilder: (BuildContext context, int index)  => Container(

      padding: const EdgeInsets.fromLTRB(10, 10, 10, 1),

      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(75.0),
        color:  MyAppTheme.list_tiles_bg_Color,
        child: Row(children: [
          Stack(
            children: [
              Positioned(
                  child: InkWell(
                    onTap: () {
                      // OpenSheet();
                    },
                    child: const CircleAvatar(
                      backgroundColor:MyAppTheme.buttonColor,
                      radius: 50,
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage(MyImages.logo ,),
                      ),
                    ),
                  )),
              Positioned(
                bottom: 0,
                right: 5,
                child: InkWell(
                  onTap: () {
                    // OpenSheet();
                  },
                  child: const CircleAvatar(
                    backgroundColor:MyAppTheme.textWhite,
                    radius: 18,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(MyImages.logo ,),
                    ),
                  ),
                ),
              ),
            ],
          ),


        ],


        ),
      )

  ),
),
   );
  }

}