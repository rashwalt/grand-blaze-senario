ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(1) and checkitem(2609,1) and checkquestcomp(1) == false and battleresult() == 0 then
  text = [[戦いを終えると、後ろから誰かが近付いてきた。

初老の男性
「お？
　どうやら、クリクから聞いた冒険者ってのは]] .. player('お前','お前たち') .. [[か……なるほど」

そう言いながら、こちらを見てくる。

初老の男性
「おっと、名乗るのを忘れていたな。
　俺はジム。冒険者ギルドのギルドマスターだ。
　どうやら、無事に]] .. itemname(2609) .. [[を手に入れてたようだな。
　よし、これで、はれて冒険者の仲間入りだな」

そう言って、一枚のカードを差し出してきた。

ギルドマスタージム
「冒険者のライセンスだ。
　コホンッ。
　……ようこそ、冒険者ギルドへ。
　我々は諸君を歓迎する」

]] .. keyitemgetmsg(63) .. [[

ギルドマスタージム
「さて、俺は忙しいからな。
　こいつを活動資金にしてくれ。
　それから、このメモもな」

]] .. getmoneymsg(100) .. [[
メモを渡された。

メモには、こう書かれている。

　冒険者ギルドで発効される依頼は、冒険者ギルドのミッションとして扱われます。
　条件さえ満たしていれば、冒険者ギルドに移動しただけで発生します。
　そのほかの一般的なクエストも同様に、条件さえ満たしていれば、そのマークへ移動した時点でイベントが発生し、クエストを受けることができます。
]]

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],1) == false then
      getmoneys(partymember[entry], 100)
      orgup(partymember[entry],1,100)
    end
  end

  writeline(text)
  questcomp(1)
  useitem(2609,1)
  tarent(1)
end