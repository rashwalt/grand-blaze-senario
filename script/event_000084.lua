if checkquestoffer(30) == true and checkquestcomp(30) == false and battleresult() == 0 and checkeventflag('二つの道',1) == true then
  text = [[剣士ルイス
「いやはや。参りましたよ。
　そちらの実力、よくわかりました。
　これなら、わたくしとあの男の決着を見届けるのに都合がいい。
　あの男……ザムダックというのですが、彼との決着で、私が生き残ってしまったら、私を殺していただけますか？
　それが、私からの依頼です」

そういって、彼は歩き出した。
まるで、ついてこい、というかのように。

彼が向かう先は、]] .. mark(59) .. [[だ。]]

  writeline(text)
  eventflag('月下の剣士・絶望ルート',1,false)
  eventflag('二つの道',2,false)
end
