if checkquestoffer(48) == true and checkquestcomp(48) == false and checkeventflag('キーマの地図情報',1) == true and checkeventflag('ＥＦ地図',1) == false then
  text = [[ぼろぼろになった地図を見つけた。

]] .. keyitemgetmsg(274)

  writeline(text)
  eventflag('ＥＦ地図',1,true)
end
