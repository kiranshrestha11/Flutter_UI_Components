class RatingModel {
  final String name, comment;
  final double rating;
  final String? img1, img2, img3, time;

  RatingModel({
    required this.name,
    this.time,
    required this.comment,
    required this.rating,
    this.img1,
    this.img2,
    this.img3,
  });
}

RatingModel ratingModel1 = RatingModel(
    name: "Samit S.",
    comment: "Very Nice Product",
    rating: 1,
    img1: "",
    img2: "",
    img3: "");

RatingModel ratingModel2 = RatingModel(
    name: "Samit S.",
    comment: "Very Nice Product",
    rating: 2,
    img1:
        "https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Profile-Picture-986x1024.jpg",
    img2: "",
    img3: "");

RatingModel ratingModel3 = RatingModel(
    name: "Samit S.",
    comment: "Very Nice Product",
    rating: 3,
    img1:
        "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    img2:
        "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    img3: "");

RatingModel ratingModel4 = RatingModel(
    name: "Samit S.",
    comment: "Very Nice Product",
    rating: 5,
    img1:
        "https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Profile-Picture-986x1024.jpg",
    img2:
        "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    img3:
        "https://bestprofilepictures.com/wp-content/uploads/2021/04/Cool-Profile-Picture-986x1024.jpg");

List<RatingModel> ratingList = [
  ratingModel1,
  ratingModel2,
  ratingModel3,
  ratingModel4
];
