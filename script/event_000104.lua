if checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',4) == true and battleresult() == 0 then
  text = [[戦いを終えると、二階からプラートが戻ってきた。

警部プラート
「どうだった？
　ン……？」]]

  if checkeventflag('ドルザノフの本',1) == true then
    text = text .. [[

見つけた本のことを話すと、プラートの顔色が変わった。

警部プラート
「すまない、ちょっと見せてくれないか」

プラートに、本を渡す。]]

    eventflag('ドルザノフの本',1,false)
  else
    text = text .. [[

何も見つからなかったというと、プラートはにやりとしてみせた。

警部プラート
「そうか。
　だが、安心したまえ。
　これを見つけた」

そう言って、彼は一冊の本を見せた。
……ドルザノフの本だ！]]
  end

  text = text .. [[

ドルザノフの本を手に、プラートは中身を見ながら語る。

警部プラート
「やはり、これはグザード卿のもののようだな。
　……よし、詰所に戻るとしよう」

プラートと共に詰所へ戻ろうとした時、丁度、詰所の方から、誰かが走ってきた。

警部プラート
「あれは……カールか？」

警備隊員カール
「プラート警部！
　大変です……フィリス嬢がグザード卿にさらわれました。
　ダンがそれを阻止しようとして……やられました……」

警部プラート
「なンだと…！
　グザードはどこへ！？」

警備隊員カール
「ウェルナーが後を追っています。
　どうやら、]] .. mark(70) .. [[へ向かったようですが……」

警部プラート
「わかった。
　カール、君は詰所に戻り、応援を集められるだけ集めてくれ。
　よし、]] .. mark(70) .. [[へ向かうぞ！」]]

  writeline(text)
  eventflag('導きの月',5,false)
  eventflag('グザードの屋敷',1,false)
end
