part of '../../views.dart';

class NavBarTabletDesktopView extends StatelessWidget {
  const NavBarTabletDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationBarItem(title: 'About Me', navigationPath: AboutRoute,),
              SizedBox(width: 60,),
              NavigationBarItem(title: 'Portfolio', navigationPath: PortfolioRoute),
              SizedBox(width: 60,),
              NavigationBarItem(title: 'Skills', navigationPath: AboutRoute,),
            ],
          )
        ],
      ),
    );;
  }
}
