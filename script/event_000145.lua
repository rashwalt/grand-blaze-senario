if ResultCount == 103 then
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
end