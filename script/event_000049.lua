--[[
ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

text = [[街は騒然としていた。

ギルドに駆け込んできたファルートの青年は、息を切らしながら言ったものだ。

『実験で作られたお化けが逃げ出した、退治して欲しい』と。

確かに、街には逃げ出したとされるお化け達があちこちにいた。
]] .. player('自分','自分たち') .. [[に依頼されただけではないのだろう。
他の冒険者達も退治に動いているはずだ。

ただ、お化け達の行動とは……いたずらだった。

落書きに始まり、寝ている人の顔へ水性ペンで黒い丸を書いてみたり、女性のスカートをめくったりしている。

手短なお化けを目標に、退治を開始する！]]

writeline(text)
battle('','',0,0,0,0)
]]

text = [[ある日、宿屋で目が覚めると、枕元に一通の手紙が置かれていた。
夜中に誰か来た気配はなかったが……何者の仕業だろうか？

手紙にはこう書かれていた。

『リセル様最高。
　リセル様美しい。
　リセル様天才。
　リセル様こそすべて。

　この手紙を見た者には、あと５人に同じ内容の手紙を送らないと、不幸な出来事が起こります。』

一緒に、何か小さな箱が置かれている。
その中は……

]]

if checkinstall(12) == false then
  text = text .. installgetmsg(12)
else
  if checknowinstall(12) == true then
    text = text .. skillgetmsg(1373)
  else
    text = text .. [[びっくり箱だった！]]
  end
end

writeline(text)
