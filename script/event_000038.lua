if checkquestoffer(16) and (checkeventflag('隊商護衛任務',2) or checkeventflag('隊商護衛任務',3)) then
  text = [[茂みを分け入っていくと、野営の後が見えた。
盗賊達はここを根城にしていたのだろうか？

軽く調べてみる。
……どうやら、慌てて移動したようだ。
まだ焚き火もほのかに暖かく、火が少し燻っている。

がさがさと茂みが揺れる音が聞こえた。
盗賊達が、こちらに仕掛けてきたようだ！]]
  
  writeline(text)
  eventflag('隊商護衛任務',3,false)
  battle('','',-1,0,0,0)
else
  battle('','',-1,0,0,0)
end
