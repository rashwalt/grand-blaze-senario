
if getlevelunder() >= 20 and checkquestoffer(38) == false and checkquestcomp(38) == false then
  text = [[？？？
「君！」

突然、呼び止められた。

初老の紳士
「君、冒険者だね？
　私は王国諜報機関に所属する、ロイという者だ。
　どうだろう、一つ仕事を頼まれてはくれないだろうか。
　ん、なぁに、そんなに難しい話ではない。
　とある人物がどこへ行くのか、それを確かめて欲しいのだよ」

そう言って、彼は片目をつぶって見せた。

紳士ロイ
「もちろん、報酬は支払う。
　興味があるならば、]] .. markname(78) .. [[へ向かってくれ。
　よろしく、たのむよ」]]
  
  writeline(text)
  questoffer(38)
  eventflag('エージェント取得',1,false)
end
