if checkquestoffer(31) == true and checkquestcomp(31) == false and battleresult() == 0 then
  text = [[元車掌ファルク
「いや、面目ありません。
　助かりました……。
　やはり、素人には戦闘というのは……気持ちのいいものではありませんね」

そういって、困ったようにファルクは笑って見せた。

元車掌ファルク
「では、行きましょう。
　あまり時間がかかっても申し訳ありませんし」

ファルクの約束とは、なんなのだろう……。
彼は先頭に立ち、]] .. mark(62) .. [[へと向かっていった…。]]

  writeline(text)
  eventflag('青い花',1,false)
end