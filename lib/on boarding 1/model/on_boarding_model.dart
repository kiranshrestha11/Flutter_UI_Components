// ignore_for_file: public_member_api_docs, sort_constructors_first
// class OnBoardingModel {
//   final String image, name;
//   OnBoardingModel({required this.name, required this.image});
// }

// OnBoardingModel c1 = OnBoardingModel(
//     name: "Kiran",
//     image:
//         "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos.jpg");

// OnBoardingModel c2 = OnBoardingModel(
//     name: "Bibek",
//     image:
//         "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos.jpg");

// OnBoardingModel c3 = OnBoardingModel(
//     name: "Krishna",
//     image:
//         "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos.jpg");

// List<OnBoardingModel> pictureContainer = [c1, c2, c3];

class ProfileModel {
  final String name;
  final String profileUrl;
  final String ago;
  final int id;

  ProfileModel({
    required this.id,
    required this.name,
    required this.profileUrl,
    required this.ago,
  });

  static List<ProfileModel> profileList = [
    ProfileModel(
        id: 1,
        ago: "3 days ago",
        name: "Upasana",
        profileUrl:
            "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos.jpg"),
    ProfileModel(
        id: 2,
        ago: "3 days ago",
        name: "Akriti",
        profileUrl:
            "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg"),
    ProfileModel(
        id: 3,
        ago: "3 days ago",
        name: "Malika",
        profileUrl:
            "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202102/google_pay__7__1200x768.jpeg?WJeXdcrm_vaY0K7AWpMp5bXZ65NH_4dg&size=770:433"),
    // ProfileModel(
    //     id: 4,
    //     ago: "3 days ago",
    //     name: "Namrata Shrestha",
    //     profileUrl:
    //         "https://i.pinimg.com/564x/5b/05/71/5b05711caf09992a779b7a150eec68b3.jpg%22"),
  ];
}
