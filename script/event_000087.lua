if checkquestoffer(30) == true and checkquestcomp(30) == false and checkeventflag('月下の剣士・絶望ルート',1) == true then
  -- ルイスルート
  text = [[…先の方から戦いの音が聞こえる。

戦場に着くと、月下に一人の男が立っていた。
……ルイスだ。

そして……。
ルイスの近くには、血を流して倒れている両手斧を背負った男……ザムダックがいた。
すでに絶命している。

剣士ルイス
「きて、くれましたか。
　……さあ、お願いしますよ……」

ルイスは笑っていた。

？？？？
「くっ、遅かったか……！」

反対側から、一人の壮年の男性が走ってきた。

剣士ルイス
「ああ、ケルガー様……。
　もう、これで……」

獣人王ケルガー
「遅かったのか、ルイス、ザムダック……！」

剣士ルイス
「…いえ、まだ間に合います。
　あの亡霊たちが私を変えてしまう前に……」

ルイスが言い終える前に、青白い何かがルイス目掛けて吸い込まれるように入っていく！
間違いない……亡霊だ！

獣人王ケルガー
「これが、あの一族の禁断の力という奴か！」

ルイスは苦しんでいた。
だが、その苦悶の声も、一瞬のことのように終え……ルイスがいた場所に、何かがいた。
人の形をしている、何かが……。

獣人王ケルガー
「くっ……！
　すまないが、]] .. player('冒険者','冒険者たち') .. [[よ。
　あれを、滅ぼすぞ！！」

ケルガーが叫ぶ。
ルイスは、これを予期していたからこそ、冒険者に自分を殺すよう頼んだのだろう。
だが、なぜ、ルイスはザムダックと戦っていたのだろう。
わからないことが多かったが、今は、戦うしかなかった。]]

  writeline(text)
  battle('122','123',0,0,0,0)
elseif checkquestoffer(30) == true and checkquestcomp(30) == false and checkeventflag('月下の剣士・希望ルート',1) == true then
  -- ザムダックルート
  text = [[ケルガーと共にザムダックを追うと、ザムダックの足元に血まみれの一人の男が倒れていた。
…すでに絶命している。

獣人王ケルガー
「遅かったか……」

ケルガーの言葉に、うつろにザムダックが答えた。

戦士ザムダック
「いや、まだだ……。
　ケルガー陛下。
　最悪の状態を避ける為に、冒険者と共に来たんだろう？
　わかっているさ」

ザムダックに、何かの怨念が集まってきた。

獣人王ケルガー
「ザムダック！！」

戦士ザムダック
「ルイス……オレたちの呪縛、あとは、彼らに託してもいいよな。
　彼らなら、オレたちの呪縛、断ち切ってくれるよな…？」

それが、彼の最後の言葉だった。
怨念がザムダックに集まり、彼の姿を変えていく。
そして、何かがいた。

今は、戦うしかない。]]

  writeline(text)
  battle('122','123',0,0,0,0)
else
  battle('','',-1,0,0,0)
end