
if checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',5) == true then
  text = [[そこは、倉庫だった。

警部プラート
「ウェルナー！」

倉庫の入り口前にある影に、ウェルナーがいた。
どうやら、中の様子を探っているようだった。

警備隊員ウェルナー
「プラート警部…！
　奴は、中にいるようです……」

ウェルナーは、かすかに震えているようだった。
無理もないだろう。
あんな化物を操る奴が相手なのだから。

警部プラート
「ウェルナー、君はここで応援を待っていろ。
　私と冒険者でグザードを抑え、フィリス嬢を救い出す」

警備隊員ウェルナー
「わ、わかりました……」

警部プラート
「さあ、行こう」

プラート共に、倉庫の中へと入る。

……暗い倉庫の中には、誰もいないようだった。
いや……誰かがいる。

倉庫に響く声
「お待ちしておりましたよ」

声と共に、ライトが点灯する。
妙な演出だった。
まるで、舞台の主役のように、自分と、フィリスをライトアップしている。

警部プラート
「グザード卿、フィリスさんを離していただこう」

グザード卿
「離す？
　クックックック。
　そうやって素直に離すバカがどこの世界にいるというのです？」

警部プラート
「……以前、この街で発生したバーサーカー事件……。
　あれを引き起こしたのも、あなたか」

プラートの問いかけに、グザードはにやっと、不気味な笑みを浮かべた。

グザード卿
「モォチロン。
　いやはや、彼は彼女を護る力がほしいと言ってましてねぇ。
　それならば、と、私の好意で、あのようにして差し上げたのですが……。
　ほら、そこにいる冒険者が、彼を殺してしまいましてね」

そう言って、彼はこちらを見てきた。
……虫酸が走る。

グザード卿
「まっ、いいでしょう。
　あとは、邪魔なあなたと、その冒険者を始末すれば、私はどこかへいける、というわけです」

警部プラート
「たとえ私が倒れても、逃げられはしないぞ、グザード！」

グザード卿
「いやはや、こういった技術は、意外と買い手がありましてね。
　闇の部分であれば、いくらでも商売できるのですよ。
　さて、それでは、始めましょうか」

そう言って、グザードが何かを取り出した。
……注射器だ。
隣で縛られたままのフィリスに刺そうとしている！！

青白き娘フィリス
「……っぅ！」

警部プラート
「貴様！！」

刺されてしまった……！！

グザード卿
「ふふ、さて……おや、おかしいですね。
　薬の効きが悪いようだ……」

警部プラート
「グザード！
　貴様を逮捕する！！」

急いでグザードを倒せば、まだ間に合うかもしれない！]]

  writeline(text)
  battle('143','144',0,0,2,0)
else
  text = [[倉庫だ。
……特に何もないようだ。]]

  writeline(text)
end