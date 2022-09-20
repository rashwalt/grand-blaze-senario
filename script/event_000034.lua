ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(4) == true and checkkeyitem(64) == true and battleresult() == 0 then
  move(11)

  text = [[～ ]] .. markname(11) .. [[ ～

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
elseif checkquestoffer(22) == true and battleresult() == 0 then
  text = [[武闘家ダイモンジ
「参った！
　降参だ」

それが、戦いの終わりの合図だった。
それまで、固唾をのんで見守っていたロックス上等兵が引き上げていく。
彼が戻っていくのを見届けると、カオルはにっこりと微笑んだ。

師範代カオル
「ありがとう、ダイモンジくん」

武闘家ダイモンジ
「いいてことよ。
　お世話になったカオルさんの頼みだしな！
　それに、独立して憎まれっ子には慣れたよ」

そう言って、ダイモンジも笑う。
こちらの疑問に答えるかのように、カオルが口を開いた。

師範代カオル
「なんだか、ごめんなさいね、騙したような形で。
　……傾いてしまった道場を建て直すために、ダイモンジくんには、“敵”として、立ちはだかってもらったの。
　彼も元々、うちの道場の門下生だったのよ。
　だけど、独立してね、今は自分の道場をもっているというわけ」

武闘家ダイモンジ
「まあ、これで、うちの道場よりも強い人がいるっていうんで、カオルさんのところに人が増えるといいなってな。
　とはいえ、本当に強いな、]] .. player('あんた','あんたら') .. [[！
　今度は別の機会で戦ってみたいぜ」

師範代カオル
「ダイモンジくん！
　ふう……ともかく、ありがとう。
　とても、助かったわ。
　お礼に……そうね、これをお渡しします」

そう言って、カオルは「必勝」と書かれたハチマキを手渡してきた。
そのハチマキが、うっすらと輝いた。
……！

何か、新たな力を得られそうだ。

]] .. installgetmsg(10) .. [[

]] .. getitemmsg(7004,1) .. [[

後日、噂を聞きつけた人々がカオルの道場へ詰めかけ、門下生が増加したという話を、風の便りで聞くことになる……。]]

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],22) == false then
      getitem(partymember[entry],7004,1)
    end
  end
  
  writeline(text)
  questcomp(22)
  tarent(13)
end