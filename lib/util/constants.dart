import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/core/configs/configs.dart';
import 'package:url_launcher/url_launcher.dart';

void openUrl(String url) => launchUrl(Uri.parse(url));

// CV
const String resume =
    'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

// Github Link
const String gitHub = 'https://github.com/sudeshnb';
// Github Link
const String facebook = 'https://facebook.com/sudeshnb';
// Github Link
const String twitter = 'https://twitter.com/sudesh78';
// Github Link
const String youtube =
    'https://www.youtube.com/channel/UCXooUY2oL_eqGhTaZn-ExSg';
// Github Link
const String linkedin = 'https://linkedin.com/in/sudeshnb';
// Github Link
const String buymeacoffee = 'https://www.buymeacoffee.com/sudeshnb';
// Github Link
const String instagram = 'https://instagram.com/sudesh_nish';
// socialLinks
const String profileImage =
    "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80";
//
// Github Link
const String fiverr = 'https://www.fiverr.com/sudeshnb';
// Github Link
const String upwork = 'https://www.upwork.com/freelancers/~015c46144016569e31';
// Github Link
const String whatsapp = 'https://api.whatsapp.com/send?phone=94741325674';

String hellotag = '''Hi there, Welcome to My Space  ''';

String yourname = "I'm Jhobert Panerio,";
// String hometitle2 = "A Mobile Application\nDeveloper";

String animationtxt1 = " Mobile Application Developer";
String animationtxt2 = " UI/UX Designer";
String animationtxt3 = " Web Developer";

//
String contactHeadding = "Let’s try my service now!";
String contactSubHeadding =
    "Let’s work together and make everything super cute and super useful.";
//
String miniDescription =
    "Freelancer providing services for programming and design content needs. Join me down below and let's get started!";

String servicesSubHeading =
    "Since the beginning of my journey as a freelance designer and developer, I've worked in startups and collaborated with talented people to create digital products for both business and consumer use. I offer a wide range of services, including brand design, programming and teaching.";
//

String protfolioSubHeading =
    "Since the beginning of my journey as a designer and developer, I have created digital products for business and consumer use. This is a little bit.";
const String aboutMeHeadline =
    'I\'m Sudesh Bandara, a Mobile App developer, Web developer and UI designer.';

const String aboutMeDetail =
    'I\'m a Fresh Graduate as Software Engineer from Quanrt University, UK. I have been developing mobile apps for over 4 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience. Been a CEO/Co-Founder of Onyxsio, Sri Lanka. Currently working as an Associate Software Engineer at Onyxsio.';

List<TyperAnimatedText> desktopList = [
  TyperAnimatedText(animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 32)),
  TyperAnimatedText(animationtxt2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 32)),
  TyperAnimatedText(animationtxt3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 32))
];

List<TyperAnimatedText> tabList = [
  TyperAnimatedText(animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20)),
  TyperAnimatedText(animationtxt2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20)),
  TyperAnimatedText(animationtxt3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20))
];
List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(animationtxt1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16)),
  TyperAnimatedText(animationtxt2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16)),
  TyperAnimatedText(animationtxt3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16))
];