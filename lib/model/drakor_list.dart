class Drakor {
  String dramaImg;
  String dramaName;
  int yearOfRelease;
  String originalNetwork;
  List<String> airedOn;
  int numberOfEpisodes;
  double rating;
  String synopsis;
  List<String> genre;
  List<String> imageCastsUrls;
  List<String> mainCasts;

  Drakor({
    required this.dramaImg,
    required this.dramaName,
    required this.yearOfRelease,
    required this.originalNetwork,
    required this.airedOn,
    required this.numberOfEpisodes,
    required this.rating,
    required this.synopsis,
    required this.genre,
    required this.imageCastsUrls,
    required this.mainCasts,
  });
}

var drakorList = [
  Drakor(
    dramaImg: 'https://foto.kontan.co.id/cAJAS_L_u_DAzuB49n7IM9M-toQ=/smart/filters:format(webp)/2023/09/28/397538806p.jpg',
    dramaName: 'Twinkling Watermelon',
    yearOfRelease: 2023,
    originalNetwork: 'tvN',
    airedOn: ['Monday', 'Tuesday'],
    numberOfEpisodes: 16,
    rating: 9.1,
    synopsis: "When a music-loving high school student is mysteriously transported back to the 1990s, he finds himself befriending his future father. They two play in a high school band, but their relationship is complicated when our hero's father starts crushing on a girl that's so not his future mother.",
    genre: ["Romance", "Comedy", "Fantasy", "Teen", "Musical"],
    imageCastsUrls: [
      "https://akcdn.detik.net.id/visual/2023/09/17/ryeo-un-di-drama-hommade-love-story-foto-facebookcomkbsdrama_34.jpeg?w=700&q=90",
      "https://upload.wikimedia.org/wikipedia/commons/a/aa/Choi_Hyun-wook_2021.png",
      "https://t1.daumcdn.net/news/202311/16/newsen/20231116070109282jhrp.jpg",
      "https://asianwiki.com/images/f/f9/Seol_In-A-1996-p01.jpeg",
    ],
    mainCasts: [
      "Ryeoun",
      "Choi Hyun-wook",
      "Shin Eun-soo",
      "Seol In-ah",
    ],
  ),
  Drakor(
    dramaImg: 'https://media.suara.com/pictures/970x544/2022/06/16/58876-poster-drakor-extraordinary-attorney-woo-soompi.jpg',
    dramaName: 'Extraordinary Attorney Woo',
    yearOfRelease: 2022,
    originalNetwork: 'ENA',
    airedOn: ['Wednesday', 'Thursday'],
    numberOfEpisodes: 16,
    rating: 8.6,
    synopsis: "Woo Young-woo, an autistic lawyer who is raised by her single father. She grows up with one friend at school, Dong Geu-ra-mi, an oddball girl who protects her from school bullies. She graduates at the top of her law school class at Seoul National University.",
    genre: ["Romance", "Drama", "Comedy", "Biographical"],
    imageCastsUrls: [
      "https://cdn0-production-images-kly.akamaized.net/aN327N_K9MOsAQRsmr9qO6_lqso=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4148406/original/029082800_1662450868-3.jpg",
      "https://koreanindo.net/wp-content/uploads/2021/02/kang-tae-oh-1.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPmFF9BOJ9tNjFeN1v-0JUAiO-G3sHY_xVgg&usqp=CAU",
    ],
    mainCasts: [
      "Park Eun-bin",
      "Kang Tae-oh",
      "Kang Ki-young",
    ],
  ),
  Drakor(
    dramaImg: 'https://asset-2.tstatic.net/tribunnewswiki/foto/bank/images/poster-drama-weightlifting-fairy-kim-bok-joo-viki.jpg',
    dramaName: 'Weightlifting Fairy Kim Bok-joo',
    yearOfRelease: 2016,
    originalNetwork: 'MBC',
    airedOn: ['Wednesday', 'Thursday'],
    numberOfEpisodes: 16,
    rating: 8.3,
    synopsis: "A coming-of-age story about a group of college athletes who are fighting for their dreams, experiencing and finding love in the process, and growing every step of the way.",
    genre: ["Drama", "Romance", "Sport", "Comedy"],
    imageCastsUrls: [
      "https://asianwiki.com/images/7/7c/Nam_Joo-Hyuk-PR002.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkGloq1ysfHFPOckxAdBK6I6kRi_CiBgS3xU27yQifyv91hdoKHGGw2V4-mK3qn_LJ3cY&usqp=CAU",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pyT8z45N8cme3YaDaZnmIKgyrk4.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/9/92/200814_%EA%B2%BD%EC%88%98%EC%A7%84.jpg"
    ],
    mainCasts: [
      "Nam Joo-hyuk",
      "Lee Sung-kyung",
      "Lee Jae-yoon",
      "Kyung Soo-jin",
    ],
  ),
  Drakor(
    dramaImg: 'https://media.sukabumiupdate.com/media/2023/09/25/1695630137_6511433951827_tq3ixNfuzyRrpyZaduCk.webp',
    dramaName: 'Doona!',
    yearOfRelease: 2023,
    originalNetwork: 'Netflix',
    airedOn: ['Friday', 'Saturday'],
    numberOfEpisodes: 9,
    rating: 7.2,
    synopsis: "Follows Lee Doona, the linchpin of K-pop girl group Dream Sweet. At the peak of her career, Doona makes the surprising move to drop out from the industry and reside in a sharehouse in a college town, where she meets Lee Wonjun, a 20-year-old freshman living upstairs who barely knows who she is.",
    genre: ["Romance"],
    imageCastsUrls: [
      "https://i.mydramalist.com/1Z835_5c.jpg",
      "https://cdn0-production-images-kly.akamaized.net/p-fhoP9BQFtT7NvFYJdJNYtibvQ=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4257722/original/098445300_1670809550-Bae_Suzy.jpeg"
    ],
    mainCasts: [
      "Yang Se-jong",
      "Bae Suzy",
    ],
  ),
  Drakor(
    dramaImg: 'https://asset-2.tstatic.net/tribunnews/foto/bank/images/sinopsis-drama-korea-the-legend-of-blue-sea.jpg',
    dramaName: 'The Legend of The Blue Sea',
    yearOfRelease: 2016,
    originalNetwork: 'SBS',
    airedOn: ['Wednesday', 'Thursday'],
    numberOfEpisodes: 20,
    rating: 8.1,
    synopsis: "The series centres on the love story of Shim Cheong, a mermaid, and Heo Joon-jae, a witty con-artist. Focusing on rebirth, fate, and unrequited love, their tale is juxtaposed with the parallel story of their Joseon-era incarnations, the mermaid, Se-hwa, and town head, Kim Dam-ryeong.",
    genre: ["Fantasy", "Romance", "Comedy"],
    imageCastsUrls: [
      "data:image/jpeg;base64,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",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/191112_%EC%A0%84%EC%A7%80%ED%98%84.jpg/640px-191112_%EC%A0%84%EC%A7%80%ED%98%84.jpg",
    ],
    mainCasts: [
      "Lee Min-ho",
      "Jun Ji-hyun",
    ],
  ),
  Drakor(
    dramaImg: 'https://cdn.idntimes.com/content-images/duniaku/post/20220929/mv5bztg0ymqxztgtmzgwyi00n2nhltlkmwytowywnda1yjkxmmvil2ltywdll2ltywdlxkeyxkfqcgdeqxvymze4mdkynta-at-v1-79bc9c90380159c3c5fdbded1d2e4f4d.jpg',
    dramaName: 'Goblin',
    yearOfRelease: 2016,
    originalNetwork: 'tvN',
    airedOn: ['Friday', 'Saturday'],
    numberOfEpisodes: 16,
    rating: 8.8,
    synopsis: "A former human turned goblin is cursed to remain immortal and alone for hundreds of years. Ji Eun Tak, a girl who can see spirits, accidentally summons him, but she's not what he expected. Eun Tak is happy when her life begins to change for the better, but then finds out Kim Shin has been lying to her.",
    genre: ["Romance", "Drama", "Comedy", "Fantasy"],
    imageCastsUrls: [
      "https://asianwiki.com/images/5/5e/Gong_Yoo-1979-p1.jpeg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYHz-EKFlzy7S-nbiGgwK5kuIVS2ZYuJ-SCQoNICpeeh9x9SAcm0so32lgDZewCWQtEQ8&usqp=CAU",
      "https://i.mydramalist.com/jQQJvv_5c.jpg",
      "https://i.mydramalist.com/kW6rwc.jpg",
      "https://asianwiki.com/images/3/36/Yook_Sung-Jae-1995-P1.jpeg",
    ],
    mainCasts: [
      "Gong Yoo",
      "Kim Go-eun",
      "Lee Dong-wook",
      "Yoo In-na",
      "Yook Sung-jae",
    ],
  ),
  Drakor(
    dramaImg: 'https://ultimagz.com/wp-content/uploads/descendants-of-the-sun2-800x450.jpg',
    dramaName: 'Descendants of The Sun',
    yearOfRelease: 2016,
    originalNetwork: 'KBS2',
    airedOn: ['Wednesday', 'Thursday'],
    numberOfEpisodes: 16,
    rating: 8.2,
    synopsis: "This drama tells of the love story that develops between a surgeon and a special forces officer. Some relationships are fated, despite the challenges of time and place.",
    genre: ["Romance", "Melodrama", "Action"],
    imageCastsUrls: [
      "https://asianwiki.com/images/e/e8/Song_Joong-Ki-p002.jpeg",
      "https://upload.wikimedia.org/wikipedia/commons/e/e2/20230719_Song_Hye-kyo_%28%EC%86%A1%ED%98%9C%EA%B5%90%29.jpg",
      "https://i.mydramalist.com/64JeXc.jpg",
      "https://asianwiki.com/images/7/7f/Kim_Ji-Won_%281992%29-p3.jpg",
    ],
    mainCasts: [
      "Song Joong-ki",
      "Song Hye-kyo",
      "Jin Goo",
      "Kim Ji-won",
    ],
  ),
  Drakor(
    dramaImg: 'https://asianwiki.com/images/d/d5/It%27s_Okay_to_Not_Be_Okay-CPsm1.jpg',
    dramaName: "It's Okay to Not Be Okay",
    yearOfRelease: 2020,
    originalNetwork: 'tvN',
    airedOn: ['Saturday', 'Sunday'],
    numberOfEpisodes: 16,
    rating: 8.6,
    synopsis: "The story of Moon Kang Tae, a community health worker at a psychiatric ward who doesn't have time for love, and Go Moon Young, a successful children's-book author with antisocial behavior who seems to have never known love. Then, the two slowly begin to heal each other's emotional wounds.",
    genre: ["Romantic comedy"],
    imageCastsUrls: [
      "https://awsimages.detik.net.id/community/media/visual/2021/01/10/7-aktris-drama-korea-terbaik-2020-4_34.jpeg?w=375",
      "https://m.media-amazon.com/images/M/MV5BZGI3ZjYwYTQtNWU5My00MDUwLWE2NmYtNzA0OThiMjYyNTNiXkEyXkFqcGdeQXVyMjMxNTAxNDk@._V1_.jpg",
      "https://m.media-amazon.com/images/M/MV5BYTZmMThhMjktMmRmMi00MDlkLWIzMmEtNGIyZDdjOThiNTM3XkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_.jpg",
    ],
    mainCasts: [
      "Seo Yea-ji",
      "Kim Soo-hyun",
      "Oh Jung-se",
    ],
  ),
  // Drakor(
  //   dramaImg: 'https://cdn0-production-images-kly.akamaized.net/xff7rvdUSJSC9aNU_JhLK-0NNps=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1036969/original/47b13ff6f89f948590ab843d47d930c6tty-poster.jpg',
  //   dramaName: "She Was Pretty",
  //   yearOfRelease: 2015,
  //   originalNetwork: 'MBC TV',
  //   airedOn: ['Wednesday', 'Thursday'],
  //   numberOfEpisodes: 16,
  //   rating: 7.6,
  //   synopsis: "Childhood sweethearts Sung-Joon and Hye-Jin decide to meet after 15 years. However, when Hye-Jin hesitates and asks her friend, Ha-ri, to take her place, things turn complicated.",
  //   genre: ["Drama", "Romance", "Comedy", "Romantic comedy", "Melodrama", "Workplace"],
  //   imageCastsUrls: [
  //     "https://m.media-amazon.com/images/M/MV5BMmY2OGM1NjEtNGRiZi00NGY5LThjMzMtOTViYTMwOGM2YmE0XkEyXkFqcGdeQXVyNzY1ODU1OTk@._V1_FMjpg_UX1000_.jpg",
  //     "https://awsimages.detik.net.id/community/media/visual/2019/12/27/113f3bdf-5760-4736-b601-66c912757218.jpeg?w=600&q=90",
  //     "https://i.mydramalist.com/pjkLDc.jpg",
  //   ],
  //   mainCasts: [
  //     "Park Seo-joon",
  //     "Hwang Jung-eum",
  //     "Choi Si-won",
  //   ],
  // ),
  Drakor(
    dramaImg: 'https://assets-a1.kompasiana.com/items/album/2022/02/08/snow-drop-62025ce6b4616e74792dc392.jpg',
    dramaName: "Snowdrop",
    yearOfRelease: 2021,
    originalNetwork: 'JTBC',
    airedOn: ['Saturday', 'Sunday'],
    numberOfEpisodes: 16,
    rating: 8.1,
    synopsis: "An enduring love story in 1987 Seoul; Youngro, a female university student, treats the bleeding Suho, a student attending a prestigious university, who one day jumps into a women's university dormitory despite the dangerous situation.",
    genre: ["Romance", "Black comedy", "Action"],
    imageCastsUrls: [
      "https://i.mydramalist.com/Zy03k_5f.jpg",
      "https://0.soompi.io/wp-content/uploads/2021/07/07193649/jisoo-3.jpeg",
    ],
    mainCasts: [
      "Jung Hae-in",
      "Jisoo"
    ],
  ),
];