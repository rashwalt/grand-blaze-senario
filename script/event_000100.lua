ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestcomp(25) == true and (checkquestoffer(36) == false or checkeventflag('導きの月',0) == true) and checkquestcomp(36) == false then
  text = [[建付の悪い酒場だった。
所々すきま風が漏れてくるものの、酒の入った男たちには、関係のないことだった。
仕事帰りなのだろうか、今日も喧噪に満ちあふれている。

酒場の主人
「おっ、いらっしゃい。
　]] .. player('あんた','あんたたち') .. [[、初めて見る顔だな？
　まあ、ぼろい酒場だが、ゆっくりしていってくれや。
　なんか飲むかい？　うちにゃ、ミルクもあるぜ？」

言って、主人は片目をつぶってみせた。
……近所の子供も親と共に食事にくることがあるようだった。
父親らしき人物と、その子供が食事をしているのが見える。

主人に追われたとおり、]] .. player('','それぞれが') .. [[飲み物を注文する。
ごく普通の、飲み物だった。]]

  if checktec('探索','仕掛け発見',20) then
    text = text .. [[

……ん？
]] .. gettecplayer() .. [[が何かに気付いた！
慌てて]] .. player('自分の','自分と仲間達の') .. [[、飲み物をたたき落とす。
その時だった。]]
  else
    text = text .. [[

運ばれてきた飲み物に口を付けようとした、その時だった。]]
  end

  text = text .. [[

ガシャン！

音で振り向くと、先ほど見えた親子の父親が、胸元をおさえ、もがき苦しんでいた。

ライカンスの子供
「父ちゃん！？
　父ちゃん、しっかりしてよ！！」

だが、異変はそれだけではなかった。
他のライカンスの大人たちも、もがき、苦しみ始めている！

酒場の主人
「なっ、こ、これは、いったい……！」

徐々に、苦しみ始めていた大人達の目つきが変貌していく。
そして、次第に……獣の姿へと変わっていく。

その姿は、見たことがあった。

あの時と同じだ。

この街で、あったあの事件と、同じ……。

大人たちが、バーサーカーになっていく…！

このままでは他の人々たちに危害が及ぶ。
なんとかせねばなるまいが……倒さなければならないだろう！]]

  writeline(text)
  battle('140,140,140,140,140,140','',0,0,0,0)
  questoffer(36)
  eventflag('導きの月',0,false)
else
  text = [[建付の悪い酒場だった。
所々すきま風が漏れてくるものの、酒の入った男たちには、関係のないことだった。]]

  writeline(text)
end
