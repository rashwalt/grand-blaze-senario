
if checkquestcomp(47) == true then
  text = [[ミッションへ出発する、数刻前のこと…。

君の部屋に、見知った顔が尋ねてきた。

]] .. companionname() .. [[だ。

どうしたのだろう？

聞けば、ギルドから別のミッションを引き受けたらしい。

……何かを探す、というミッションだ。

深くは教えてもらえなかった。
だが、それは、これから戦う敵に対して、必要なものだという。

……そのため、ミッション「光る大地」に参加する冒険者の中に、]] .. companionname() .. [[の姿はない。]]
  
  writeline(text)
end

