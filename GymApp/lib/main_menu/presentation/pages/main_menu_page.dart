import 'package:GymApp/contstants/app_images.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key key}) : super(key: key);

  static const String id = '/main_menu_page';

  @override
  Widget build(BuildContext context) {
    final List<Widget> _optionList = [
      Card(
        shape: Border(right: BorderSide(color: Colors.black, width: 2.5)),
        margin: EdgeInsets.symmetric(vertical: 15.0),
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImages.weightIcon,
          SizedBox(
            height: 15,
          ),
          Text(
            "Entrenamientos",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      Card(
        margin: EdgeInsets.all(2.0),
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImages.calendarIcon,
          SizedBox(
            height: 15,
          ),
          Text(
            "Agendar",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      Card(
        shape: Border(right: BorderSide(color: Colors.black, width: 2.5)),
        margin: EdgeInsets.symmetric(vertical: 15.0),
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImages.foodIcon,
          SizedBox(
            height: 15,
          ),
          Text(
            "Dietas",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ])),
      ),
      Card(
        margin: EdgeInsets.all(2.0),
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AppImages.phoneIcon,
          SizedBox(
            height: 15,
          ),
          Text(
            "Contáctenos",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )
        ])),
      ),
    ];

    return Container(
      child: Column(
        children: [
          _buildHeader(context),
          _buildOptions(context, _optionList),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        child: AppImages.mainMenuBG,
      ),
      Container(
        child: Hero(tag: AppImagePaths.gymIcon, child: AppImages.gymIcon),
      )
    ]);
  }

  Widget _buildOptions(BuildContext context, List<Widget> optionList) {
    return Expanded(
      child: Container(
        color: Color(0xFFFE4001),
        child: GridView.count(
            padding: EdgeInsets.all(0),
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            shrinkWrap: true,
            children: optionList),
      ),
    );
  }
}
