if checkquestoffer(30) == true and checkquestcomp(30) == false and battleresult() == 0 then
  text = [[モンスターを倒し、気がつくと、一通の手紙が置かれていた。

「北西にある]] .. mark(57) .. [[へ来るべし」

しかし、先ほど、敵の数体を引きつけて立ち去っていった、あの若い男の行方も気になる。
彼は]] .. mark(58) .. [[へ向かったようだが……。

さて、どちらへ向かおうか。]]

  writeline(text)
  eventflag('二つの道',1,false)
end