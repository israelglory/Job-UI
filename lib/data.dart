class Jobs {
  String companyName;
  String stack;
  String shortdescription;
  String image;
  String applicants;
  String numApplicant;
  String longdescription;
  Jobs({
    required this.companyName,
    required this.image,
    required this.shortdescription,
    required this.applicants,
    required this.stack,
    required this.numApplicant,
    required this.longdescription,
  });
  static List<Jobs> generatejobs() {
    return [
      Jobs(
          companyName: 'Dribbble',
          image: 'images/dribbble.png',
          stack: 'Senior UI UX Designer',
          shortdescription:
              'We are looking for an experienced mobile developer to join our dynamic team. Your role will require you to create and maintain mobile applications for Android and iOS.',
          applicants: 'Be in the first 20 applicants',
          numApplicant: '20 applicants',
          longdescription:
              'Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android).'),
      Jobs(
          companyName: 'Behance',
          image: 'images/behance.png',
          stack: 'Senior UI UX Designer',
          shortdescription:
              'We are looking for an experienced mobile developer to join our dynamic team. Your role will require you to create and maintain mobile applications for Android and iOS.',
          applicants: 'Be in the first 20 applicants',
          numApplicant: '20 applicants',
          longdescription:
              'Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android).'),
      Jobs(
          companyName: 'GitHub',
          image: 'images/github.png',
          stack: 'Senior UI UX Designer',
          shortdescription:
              'We are looking for an experienced mobile developer to join our dynamic team. Your role will require you to create and maintain mobile applications for Android and iOS.',
          applicants: 'Be in the first 20 applicants',
          numApplicant: '20 applicants',
          longdescription:
              'Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android).'),
      Jobs(
          companyName: 'Instagram',
          image: 'images/instagram.png',
          stack: 'Senior UI UX Designer',
          shortdescription:
              'We are looking for an experienced mobile developer to join our dynamic team. Your role will require you to create and maintain mobile applications for Android and iOS.',
          applicants: 'Be in the first 20 applicants',
          numApplicant: '20 applicants',
          longdescription:
              'Flutter is a free and open-source mobile UI framework created by Google and released in May 2017. In a few words, it allows you to create a native mobile application with only one codebase. This means that you can use one programming language and one codebase to create two different apps (for iOS and Android).'),
    ];
  }
}
