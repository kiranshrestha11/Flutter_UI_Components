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
            "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg"),
    ProfileModel(
        id: 2,
        ago: "3 days ago",
        name: "Akriti",
        profileUrl:
            "https://media.istockphoto.com/photos/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter-picture-id1311084168?k=20&m=1311084168&s=612x612&w=0&h=gclZozEGfK0eSUhKEE7RrUq8B5qDLvQTPrb0Vc-vEyI="),
    ProfileModel(
        id: 3,
        ago: "3 days ago",
        name: "Malika",
        profileUrl:
            "https://images.unsplash.com/photo-1484800089236-7ae8f5dffc8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"),
    // ProfileModel(
    //     id: 4,
    //     ago: "3 days ago",
    //     name: "Namrata Shrestha",
    //     profileUrl:
    //         "https://i.pinimg.com/564x/5b/05/71/5b05711caf09992a779b7a150eec68b3.jpg%22"),
  ];
}
