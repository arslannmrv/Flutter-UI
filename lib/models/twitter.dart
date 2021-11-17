class TwitterData {
  String name;
  String profileImage;
  String tweet;
  String tweetImage;
  String hashtag;
  String notification;
  String message;

  TwitterData(this.name, this.profileImage, this.tweet, this.tweetImage,
      this.hashtag, this.notification, this.message);

  static List<TwitterData> fetchAll() {
    return [
      TwitterData(
        'Merve Arslan',
        "https://pbs.twimg.com/profile_images/1121170754245152769/IL30qlzI_400x400.png",
        'Another great news from DartPad',
        "https://pbs.twimg.com/media/FD8r2R_WQAonUUg?format=png&name=900x900",
        '#1',
        'Merve Arslan Notification',
        'Hello',
      ),
      TwitterData(
        'GDG Eskişehir',
        "https://pbs.twimg.com/profile_images/1120641345939542019/llcAPa8R_400x400.png",
        'Herkese merhaba 3 Eylül saat 19.00da Android 12deki yenilikler sunumuyla Murat Yener youtube kanalımızda sizlerle olacak. Bize katılmayı unutmayın! ',
        "https://pbs.twimg.com/media/E-NoyKxWYAAR7Io?format=jpg&name=small",
        '#2',
        'GDG Eskişehir Notification',
        'Hello',
      ),
      TwitterData(
        'Flutter',
        "https://pbs.twimg.com/profile_images/1187814172307800064/MhnwJbxw_400x400.jpg",
        'Thank you for providing insights to help us improve Flutter. Get an inside look into what happens when you answer our surveys ',
        "https://pbs.twimg.com/media/FDSFcoSWQAYX7ST?format=jpg&name=large",
        '#3',
        'Flutter Notification',
        'Hello',
      ),
      TwitterData(
        'Women Techmakers',
        "https://pbs.twimg.com/profile_images/1093585928642162688/oVdX1KD-_400x400.jpg",
        'Take a </br> from studying, and sharpen your coding skills with fun, challenging problems! Join us for the last round of #KickStart 2021 on November 14th.',
        "https://pbs.twimg.com/media/FDxvDFWXIAUCj5L?format=jpg&name=large",
        '#4',
        'TwitterData Notification',
        'Hello',
      ),
    ];
  }
}
