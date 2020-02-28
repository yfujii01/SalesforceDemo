// データ作成APEX

// 日本の出版社一覧
// https://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E3%81%AE%E5%87%BA%E7%89%88%E7%A4%BE%E4%B8%80%E8%A6%A7

/**
 * ランダム値取得
 */
public Integer getRandomNumber(Integer upperLimit) {

    if (upperLimit == null || upperLimit <= 0) {
        return 0;
    }

    Integer rand = Math.round(Math.random()*1000);
    return Math.mod(rand, upperLimit);
}

public String getRandomString(Integer length) {
  String s = '';
  for (Integer i=0;i<length;i++){
    s += String.valueof(getRandomNumber(9));
  }
  return s;
}

List<String> titles = new List<String>();

titles.add('ITサポートシステムズ');
titles.add('アイ・ディ・ジー・ジャパン');
titles.add('IDP出版');
titles.add('アイバス出版');
titles.add('エムティ出版');
titles.add('エムディエヌコーポレーション');
titles.add('エム・ビー・カンパニー');
titles.add('エム・ピー・シー');
titles.add('エモーション');
titles.add('共立出版');
titles.add('杏林書院');
titles.add('杏林図書');
titles.add('啓学出版');
titles.add('藝華書院');
titles.add('恵雅堂出版');
titles.add('KK書房');
titles.add('こぶし書房');
titles.add('ゴブリン書房');
titles.add('コプレス');
titles.add('ごま書房');
titles.add('高麗書林');
titles.add('ゴマブックス');
titles.add('サンライズパブリケーション');
titles.add('サンリオ');
titles.add('三嶺書房');
titles.add('産労総合研究所');
titles.add('サンロード出版');
titles.add('C&R研究所');
titles.add('出帆新社');
titles.add('出版処てんてる');


List<Publisher__c> publishers = new List<Publisher__c>();

for (String title : titles) {
  Publisher__c pub = new Publisher__c(
    Name = title
  );
  publishers.add(pub);
}

insert publishers;
