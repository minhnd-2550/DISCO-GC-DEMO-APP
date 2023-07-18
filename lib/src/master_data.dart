class ListValue {
  final int key;
  final String value;
  final int? m_location_category_id;
  final int? m_country_code;

  ListValue({
    required this.key,
    required this.value,
    this.m_location_category_id,
    this.m_country_code,
  });
}

List locationCategory = [
  ListValue(key: 99999, value: ""),
  ListValue(key: 10001, value: "ヨーロッパ"),
  ListValue(key: 10002, value: "オセアニア"),
  ListValue(key: 10003, value: "東アジア"),
  ListValue(key: 10004, value: "アセアン"),
  ListValue(key: 10005, value: "南アジア"),
  ListValue(key: 10006, value: "中南米・カリブ"),
  ListValue(key: 10007, value: "西アジア・中東"),
  ListValue(key: 10008, value: "アフリカ"),
  ListValue(key: 10009, value: "その他"),
];
List<ListValue> location = [
  ListValue(
      m_location_category_id: 99999,
      m_country_code: 1,
      key: 1,
      value: 'アメリカ合衆国'),
  ListValue(
      m_location_category_id: 99999, m_country_code: 1, key: 2, value: 'カナダ'),
  ListValue(
      m_location_category_id: 99999, m_country_code: 81, key: 3, value: '日本'),
  ListValue(
      m_location_category_id: 10001, m_country_code: 44, key: 4, value: 'イギリス'),
  ListValue(
      m_location_category_id: 10001, m_country_code: 33, key: 5, value: 'フランス'),
  ListValue(
      m_location_category_id: 10001, m_country_code: 49, key: 6, value: 'ドイツ'),
  ListValue(
      m_location_category_id: 10001, m_country_code: 34, key: 7, value: 'スペイン'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 43,
      key: 8,
      value: 'オーストリア'),
  ListValue(
      m_location_category_id: 10001, m_country_code: 32, key: 9, value: 'ベルギー'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 420,
      key: 10,
      value: 'チェコ'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 45,
      key: 11,
      value: 'デンマーク'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 358,
      key: 12,
      value: 'フィンランド'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 30,
      key: 13,
      value: 'ギリシャ'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 36,
      key: 14,
      value: 'ハンガリー'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 353,
      key: 15,
      value: 'アイルランド'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 39,
      key: 16,
      value: 'イタリア'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 31,
      key: 17,
      value: 'オランダ'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 47,
      key: 18,
      value: 'ノルウェー'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 48,
      key: 19,
      value: 'ポーランド'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 40,
      key: 20,
      value: 'ルーマニア'),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 351,
      key: 21,
      value: 'ポルトガル'),
  ListValue(
      m_location_category_id: 10001, m_country_code: 7, key: 22, value: "ロシア"),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 46,
      key: 23,
      value: "スウェーデン"),
  ListValue(
      m_location_category_id: 10001, m_country_code: 41, key: 24, value: "スイス"),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: 380,
      key: 25,
      value: "ウクライナ"),
  ListValue(
      m_location_category_id: 10001,
      m_country_code: null,
      key: 26,
      value: "EU"),
  ListValue(
      m_location_category_id: 10002,
      m_country_code: 61,
      key: 27,
      value: "オーストラリア"),
  ListValue(
      m_location_category_id: 10002,
      m_country_code: 64,
      key: 28,
      value: "ニュージーランド"),
  ListValue(
      m_location_category_id: 10003, m_country_code: 82, key: 29, value: "韓国"),
  ListValue(
      m_location_category_id: 10003, m_country_code: 86, key: 30, value: "中国"),
  ListValue(
      m_location_category_id: 10003, m_country_code: 886, key: 31, value: "台湾"),
  ListValue(
      m_location_category_id: 10003,
      m_country_code: 852,
      key: 32,
      value: "香港, 中国"),
  ListValue(
      m_location_category_id: 10003,
      m_country_code: 853,
      key: 33,
      value: "マカオ, 中国"),
  ListValue(
      m_location_category_id: 10003,
      m_country_code: 976,
      key: 34,
      value: "モンゴル"),
  ListValue(
      m_location_category_id: 10003,
      m_country_code: 850,
      key: 35,
      value: "北朝鮮"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 62,
      key: 36,
      value: "インドネシア"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 60,
      key: 37,
      value: "マレーシア"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 63,
      key: 38,
      value: "フィリピン"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 65,
      key: 39,
      value: "シンガポール"),
  ListValue(
      m_location_category_id: 10004, m_country_code: 66, key: 40, value: "タイ"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 84,
      key: 41,
      value: "ベトナム"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 95,
      key: 42,
      value: "ミャンマー"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 855,
      key: 43,
      value: "カンボジア"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 856,
      key: 44,
      value: "ラオス"),
  ListValue(
      m_location_category_id: 10004,
      m_country_code: 673,
      key: 45,
      value: "ブルネイ"),
  ListValue(
      m_location_category_id: 10005, m_country_code: 91, key: 46, value: "インド"),
  ListValue(
      m_location_category_id: 10005,
      m_country_code: 977,
      key: 47,
      value: "ネパール"),
  ListValue(
      m_location_category_id: 10005,
      m_country_code: 92,
      key: 48,
      value: "パキスタン"),
  ListValue(
      m_location_category_id: 10005,
      m_country_code: 880,
      key: 49,
      value: "バングラデシュ"),
  ListValue(
      m_location_category_id: 10005,
      m_country_code: 94,
      key: 50,
      value: "スリランカ"),
  ListValue(
      m_location_category_id: 10005,
      m_country_code: 975,
      key: 51,
      value: "ブータン"),
  ListValue(
      m_location_category_id: 10005,
      m_country_code: 93,
      key: 52,
      value: "アフガニスタン"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 54,
      key: 53,
      value: "アルゼンチン"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 591,
      key: 54,
      value: "ボリビア"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 55,
      key: 55,
      value: "ブラジル"),
  ListValue(
      m_location_category_id: 10006, m_country_code: 56, key: 56, value: "チリ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 57,
      key: 57,
      value: "コロンビア"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 506,
      key: 58,
      value: "コスタリカ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 1,
      key: 59,
      value: "ドミニカ共和国"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 593,
      key: 60,
      value: "エクアドル"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 503,
      key: 61,
      value: "エルサルバドル"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 502,
      key: 62,
      value: "グアテマラ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 509,
      key: 63,
      value: "ハイチ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 504,
      key: 64,
      value: "ホンジュラス"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 1,
      key: 65,
      value: "ジャマイカ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 52,
      key: 66,
      value: "メキシコ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 505,
      key: 67,
      value: "ニカラグア"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 507,
      key: 68,
      value: "パナマ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 595,
      key: 69,
      value: "パラグアイ"),
  ListValue(
      m_location_category_id: 10006, m_country_code: 51, key: 70, value: "ペルー"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 1,
      key: 71,
      value: "プエルトリコ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 598,
      key: 72,
      value: "ウルグアイ"),
  ListValue(
      m_location_category_id: 10006,
      m_country_code: 58,
      key: 73,
      value: "ベネズエラ"),
  ListValue(
      m_location_category_id: 10007, m_country_code: 90, key: 74, value: "トルコ"),
  ListValue(
      m_location_category_id: 10007, m_country_code: 98, key: 75, value: "イラン"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 964,
      key: 76,
      value: "イラク"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 966,
      key: 77,
      value: "サウジアラビア"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 967,
      key: 78,
      value: "イエメン"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 963,
      key: 79,
      value: "シリア"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 972,
      key: 80,
      value: "イスラエル"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 971,
      key: 81,
      value: "アラブ首長国連邦"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 961,
      key: 82,
      value: "レバノン"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 968,
      key: 83,
      value: "オマーン"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 965,
      key: 84,
      value: "クウェート"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 974,
      key: 85,
      value: "カタール"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 973,
      key: 86,
      value: "バーレーン"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 998,
      key: 87,
      value: "ウズベキスタン"),
  ListValue(
      m_location_category_id: 10007,
      m_country_code: 7,
      key: 88,
      value: "カザフスタン"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 234,
      key: 89,
      value: "ナイジェリア"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 251,
      key: 90,
      value: "エチオピア"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 20,
      key: 91,
      value: "エジプト"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 27,
      key: 92,
      value: "南アフリカ"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 254,
      key: 93,
      value: "ケニア"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 249,
      key: 94,
      value: "スーダン"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 212,
      key: 95,
      value: "モロッコ"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 213,
      key: 96,
      value: "アルジェリア"),
  ListValue(
      m_location_category_id: 10008,
      m_country_code: 233,
      key: 97,
      value: "ガーナ"),
  ListValue(
      m_location_category_id: 10009,
      m_country_code: null,
      key: 999,
      value: "その他"),
];
