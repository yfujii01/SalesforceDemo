// データ作成APEX

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


List<Author__c> authors = [select id,name from Author__c];

List<Book__c> books = [select id from Book__c];

List<Writing__c> writings=new List<Writing__c>();

for(Book__c book : books){
  Writing__c writing = new Writing__c(
    BookId__c = book.id,
    AuthorId__c = authors.get(getRandomNumber(authors.size()-1)).id
  );
  writings.add(writing);
}
insert writings;