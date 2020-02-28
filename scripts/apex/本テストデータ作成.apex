// データ作成APEX

// 小説タイトル生成器
// https://tool.stabucky.com/convert/title_generator.htm

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

system.debug(getRandomString(9));
system.debug(getRandomString(9));
system.debug(getRandomString(9));



system.debug(getRandomNumber(10));
system.debug(getRandomNumber(10));
system.debug(getRandomNumber(10));

List<Author__c> authors = [select id,name from Author__c];

system.debug(authors.get(getRandomNumber(authors.size()-1)));
system.debug(authors.get(getRandomNumber(authors.size()-1)));
system.debug(authors.get(getRandomNumber(authors.size()-1)));
system.debug(authors.get(getRandomNumber(authors.size()-1)));
system.debug(authors.get(getRandomNumber(authors.size()-1)));
system.debug(authors.get(getRandomNumber(authors.size()-1)));

List<String> titles = new List<String>();

titles.add('春の杳子');
titles.add('乙女の詩');
titles.add('小さい諸人往来');
titles.add('土のシネマ');
titles.add('いつか人へ');
titles.add('九月の閾');
titles.add('タイムスリップ大連');
titles.add('火垂るの何者');
titles.add('山由煕');
titles.add('榧の馬車');
titles.add('広場の登攀');
titles.add('巷談炎環');
titles.add('熟れてゆく笹舟');
titles.add('夜と霧の首');
titles.add('コシャマイン手紙');
titles.add('虹の谷の山河');
titles.add('犬さま');
titles.add('鶏鏨師');
titles.add('されどコンビニ 人間');
titles.add('御苦労孤独');
titles.add('乳と男');
titles.add('パーク踏む');
titles.add('受け来たＣＯＯ');
titles.add('プレオー８の煙');
titles.add('火垂るの小景');
titles.add('青春蝶');
titles.add('モッキングバードのパーティー');
titles.add('海の桐');
titles.add('赤頭巾ちゃんラバーズオンリー');
titles.add('蒲田仲間');
titles.add('ポトスライムの我にあり');
titles.add('テロリストの卵');
titles.add('張少子のつるぎ');
titles.add('馬淵アメリカ');
titles.add('蒼ざめたアメリカ');
titles.add('風流死んでいない 者');
titles.add('オキナワの行進曲');
titles.add('対岸の等伯');
titles.add('雁のまんま');
titles.add('人間万事異邦人');
titles.add('悪い何');
titles.add('少年のパラソル');
titles.add('蛇に錦城');
titles.add('マークスの犬');
titles.add('私の夜明け');
titles.add('猛スピードで雁立');
titles.add('乳と石川五右衛門');
titles.add('異類間に合えば');
titles.add('鬼の献身');
titles.add('鈴木ムシ');
titles.add('ベティさんの城外');
titles.add('ａｂ恋文');
titles.add('聖桔梗');
titles.add('厚物我にあり');
titles.add('光抱く墓');
titles.add('春の踏む');
titles.add('漂泊者のまんま');
titles.add('この人の離婚');
titles.add('アメリカ帽子');
titles.add('年の卵');

List<Publisher__c> publishers = [select id from Publisher__c];

List<Book__c> books = new List<Book__c>();
for (String title : titles) {
  Book__c book = new Book__c(
    Name = title,
    ISBN__c = getRandomString(13),
    PublicationYear__c = '20' + String.valueof(getRandomNumber(1)) + String.valueof(getRandomNumber(9)),
    PublisherId__c = publishers.get(getRandomNumber(publishers.size()-1)).id
  );
  books.add(book);
  system.debug(book);
}

insert books;
