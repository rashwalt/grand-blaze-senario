
if checkquestoffer(44) == true and checkquestcomp(44) == false then
  text = [[薄い靄がかかったかのような世界だった。
鍵を使って入った場所。
この世ならざる場所。

……今、目の前に、壁がある。
超えなければならぬ壁。

崩壊した異なる多元世界が残した記憶の結晶ッ！
これを打ち砕き、新たな力とせよ！

ガラス細工のような冒険者の姿をした壁が立ちふさがっている！！]]

  writeline(text)
  battle('171,172,173,174,175,176','',0,0,0,0)
else
  text = [[そこは、ただの洞窟だった。
何もない……本当に、何もない……？]]

  writeline(text)
end
