part of 'widgets.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    String welcomeMessage = """
Welcome to My Flutter World!
I am a passionate Flutter Developer dedicated to crafting stunning digital experiences. From elegant UI design to innovative functionality, I'm committed to bringing ideas to life through the magic of Flutter.

Explore this page to witness my journey in creating dynamic and responsive applications. With a focus on clean code and expertise in Flutter widgets, I'm ready to elevate your projects to the next level.

Let's collaborate to turn your ideas into impressive mobile applications. I'm prepared to deliver creative and high-quality solutions. Let's embark on our Flutter adventure together!
""";
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      var textAlignment =
          sizingInfo.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
      double descriptionSize =
          sizingInfo.deviceScreenType == DeviceScreenType.mobile ? 16 : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HELLO.\nI am FATHAN RADHIYAN',
              textAlign: textAlignment,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              SharedString.welcomeMessage,
              textAlign: textAlignment,
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
            ),
          ],
        ),
      );
    });
  }
}
