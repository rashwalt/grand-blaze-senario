ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(16) and checkeventflag('隊商護衛任務',10) and battleresult() == 0 then
  text = [[手応えはなかった。
ただ、黒き人影はひゅっと、どこかへと飛び去っていったのみ。

ひとまず、危機は去ったようだ。

商人ホランド
「やれやれ……。
　おっと、あんなドンパチをやらかしたら、正体がばれてしまうかな？」

そう言って、ホランドは片目をつぶって見せた。

商人ホランド
「まあ、私はただの商人だということにしておいてくれよ。
　それじゃ、報酬を渡すとしよう」

ずっしりと重い。
……口止め料も入っているようだ。

]] .. getmoneymsg(1800) .. [[

商人ホランド
「それじゃ」

ホランドは駆けつけてきた警備兵達と共に、街の雑踏へと消えていった。
警備兵達に事情を説明するのだろう。
そして、あの人影のことも……。

]] .. player('name','一行') .. [[は、一仕事終えたあとの達成感と、そして、妙な胸騒ぎを覚えていたのだった……。

～ 暗き闇に包まれる森の中 ～

「はぁ……はぁ……」

うずくまる人影一つ。
そこへ、そっと、小さな影が近づく。

小さな影
「旦那ぁ……」

うずくまる人影
「くっ……。
　私は、私はこれしきのことで朽ちる男ではない……。
　あの時とて、屈辱とともに生きてきたのだ。
　私が、ヒュームだからか……？
　だからこそ、我が家系は潰えろということか。
　否……断じて否…！
　私は、必ず復讐してくれる。
　奴に、世界に……！」]]

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],16) == false then
      getmoneys(partymember[entry], 1800)
      orgup(partymember[entry],1,100)
    end
  end
  
  writeline(text)
  questcomp(16)
  tarent(8)
end
