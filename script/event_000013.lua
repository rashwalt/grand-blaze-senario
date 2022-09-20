ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

function no_mission()
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「ん？　悪いが、いま頼める仕事はないよ。
　またあとで来てくれ」]]

  writeline(text)
end

if checkkeyitem(63) and checkquestoffer(4) == false and checkquestcomp(4) == false then
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「はじめてか？
　ここはファーネルド連邦から、冒険者に対して依頼されるミッションを受託するための場所だ。
　早速だが、頼まれて欲しい。
　]] .. area(12) .. [[に]] .. mark(12) .. [[と呼ばれる場所がある。
　そこにいるロックス上等兵から、モンスターの偵察報告を受け取ってきて欲しい。
　そうそう危険はないと思うが……。
　そうだ、あそこはわかりにくい場所にあるからな、地図はもっていけよ。
　では、よろしく頼む」]]
  
  writeline(text)
  questoffer(4)
elseif checkquestoffer(4) == true and checkquestcomp(4) == false and checkkeyitem(64) == true then
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「おっと、ご苦労さん。
　報告書は……よし、受け取った。
　ご苦労だったな。
　次も頼むぞ。
　これが報酬だ」

]] .. getmoneymsg(500)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],4) == false then
      getmoneys(partymember[entry],500)
      orgup(partymember[entry],9,100)
    end
  end
  
  usekeyitem(64)
  writeline(text)
  questcomp(4)
  tarent(5)
elseif checkkeyitem(63) and checkquestoffer(18) == false and checkquestcomp(4) == true and checkquestcomp(18) == false then
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「うん？
　依頼を受けに来たのか？
　……う～ん……。
　悪いが、今頼める仕事は……、いや、あるか。
　これだな。
　えぇと、]] .. area(34) .. [[の]] .. mark(34) .. [[を調査してきてほしいといった内容だ。
　調査といっても、そこにある]] .. keyitemname(72) .. [[を持ち帰ってきてくれればいい。
　簡単な仕事だろ？」]]
  
  writeline(text)
  questoffer(18)
elseif checkquestoffer(18) == true and checkquestcomp(18) == false and checkkeyitem(72) == true then
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「ご苦労さん。
　土は……うん、確認した。
　不思議な土だろ？
　一見、何の変哲もないが、この土を触ると、なんか、もの悲しくなってくるんだよな。
　じゃ、これが報酬だ」

]] .. getmoneymsg(800)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],18) == false then
      getmoneys(partymember[entry],800)
    end
  end
  
  usekeyitem(72)
  writeline(text)
  questcomp(18)
  tarent(9)
elseif checkkeyitem(63) and checkquestoffer(33) == false and checkquestcomp(18) == true and checkquestcomp(33) == false then
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「お、依頼を受けに来たのか。
　ちょっと待ってな、確か……これだ。
　詳細はちょっとこっちまで来てないんでな、詳しいことは現地で聞いてくれ。
　あったぞ、これだ。]] .. area(64) .. [[の]] .. mark(64) .. [[に向かってくれ。
　そこに、今回の仕事を統括している人物がいる。
　じゃ、気をつけていけよ」]]
  
  writeline(text)
  questoffer(33)
elseif checkkeyitem(63) then
  no_mission()
else
  text = [[ファーネルド連邦からのミッションを受けるための場所だ。

受付ジョーイ二等兵
「ん？
　]] .. keyitemname(63) .. [[は……ないみたいだな。
　すまんが、]] .. keyitemname(63) .. [[をもっていないやつには依頼を出せないよ」]]
  
  writeline(text)
end
