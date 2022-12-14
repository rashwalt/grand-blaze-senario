ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(19) and battleresult() == 0 then
  text = [[戦いを終えたローエンに、隠れていたケントが駆け寄ってくる。

少年ケント
「パパ！」

父が助けに来てくれたことが嬉しい反面、わざと強気でいたのだろう、緊張がほぐれ、先ほどまでの恐ろしい体験に、父の胸の中で涙を流していた。
鎧であったため、決して暖かくはなく、むしろ冷たかったが……父の胸元に駆け寄り、抱きしめられているという事実が、少年と、父、そして、]] .. player('冒険者','冒険者たち') .. [[の心を暖かくさせる。

無言で抱き合っていた親子であったが、しばらくすると、ローエンが立ち上がる。

元騎士ローエン
「助かりました。
　]] .. player('あなた','あなたがた') .. [[のおかげで、息子を救うことができました。
　……この盗賊達は、私から、警察に引き渡しておきます。
　そうだ。
　お礼は……すいません、こんなものしかなくて」

そう言って、ローエンは自ら使っていた盾を差し出した。

元騎士ローエン
「私は、妻を任務中に亡くし、任務中であったため、看取ることもできず……。
　私が近くにいれば、もしかしたら妻は助かったかもしれないと、そう思って、騎士団をやめ、ファーネルへと引っ越してきました。
　今度は、ずっと息子を護っていられるように。
　しかし、ケントにはそういった、『逃げている父親』が許せなかったんですね。
　護るための本当の強さが、わかったような気がします……」

ローエンがそう言うと、彼が手にした盾が、うっすらと輝いた。
……！

何か、新たな力を得られそうだ。

]] .. installgetmsg(7) .. [[

]] .. getitemmsg(7002,1) .. [[

数刻後、遅れて到着した警察に盗賊達を引き渡した。
ローエンたちは、警察から事情聴取を受けるため、一足先に、首都ファーネルへと戻った。]]

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],19) == false then
      getitem(partymember[entry],7002,1)
    end
  end
  
  writeline(text)
  questcomp(19)
  tarent(10)
end
