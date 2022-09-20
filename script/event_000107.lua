ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',5) == true and battleresult() == 0 then
  text = [[警部プラート
「…………」

警備隊員ウェルナー
「警部！！」

警部プラート
「ウェルナー！
　すぐに救急車を！
　至急だ！！」

警備隊員ウェルナー
「はっ、はい！！」

プラートが応援に駆けつけた警備隊員たちを指揮する。

警部プラート
「急げ、時間との勝負だぞ！」

……フィリスは、はたしてバーサーカーとなる前に元通りになるだろうか。

…………。

……数刻後。

ツェンブルグのとある病院。

警部プラート
「]] .. player('君','君たち') .. [[か。
　フィリスは……」

手術室の扉が開き、医師達が出てくる。

警部プラート
「彼女の容態は！？」

医師フランク
「大丈夫です。
　あとは安静にしていれば大丈夫でしょう。
　すでに魔法、及び医療による治療は完了しています。
　あとは、彼女自身の問題です」

警部プラート
「そうか……。
　ありがとう」

医師フランク
「いえ、これが我々の仕事ですから」

警部プラート
「ふむ、しかし、]] .. player('君','君たち') .. [[も、助かった。
　ン……これは捜査協力の礼だ。
　取っておいてくれ」

]] .. getmoneymsg(2600)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],36) == false then
      getmoneys(partymember[entry],2600)
    end
  end

  writeline(text)
  questcomp(36)
  tarent(23)
end

