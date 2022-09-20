if checkquestoffer(48) == true and checkquestcomp(48) == false and checkeventflag('キーマの地図情報',1) == true and checkeventflag('ＶＡ地図',1) == false then
  text = [[ぼろぼろになった地図を見つけた。

]] .. keyitemgetmsg(275)

  writeline(text)
  eventflag('ＶＡ地図',1,true)
end
