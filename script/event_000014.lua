if checkquestoffer(4) == true then
  text = [[見晴らしのいい丘だった。
眼下にモンスターの群れが動いているのが見える。

「おい、こんなところで突っ立っているな！」

突然、声をかけられた。
振り向くと、ファーネルド連邦の軍服を着た男性が立っている。

軍人の男
「ついてこい。
　こんなところにいたら、命がいくつあってもたりんぞ」

案内されたのは、若干広めの洞窟だった。
万が一モンスターなどに発見された場合に使うのだろう、爆薬と軍人の剣、銃が置かれている。
だが、ほとんどは記録を付けるための装置やノートなどであった。

ロックス上等兵
「冒険者だな？
　私はゴードン・ロックス上等兵だ。
　ここではマルンベイム平原に出没する危険生物の監視を行っている。
　昔はモンスターが団体さんで攻め込んできたこともあったらしいからな。
　今はそういうこともないが……まあ、ご苦労だったな。
　これが定期報告書だ。
　なくさないように」

]] .. keyitemgetmsg(64) .. [[

　その、帰り道のことだった。
　モンスターの気配を感じる……！]]

  writeline(text)
  battle('','',-1,0,0,0)
elseif checkquestoffer(22) == true then
  text = [[見晴らしのいい丘だった。
眼下にモンスターの群れが動いているのが見える。

だが、その丘の頂上には、一人の男が佇んでいた。
がっしりとした筋肉。

どうどうと、仁王立ちしている。

ロックス上等兵
「お、おいおい、こんなところで何が始まるんだよ……？」

その男以外には、誰もいない。
いや……街の方から、冒険者と一人の女性がやってくる。

そして、両者は、対峙した。
意識したわけではないが、なぜか、自分の立ち位置が、競技の審判のように、両者の真ん中であることに、いくつかの戦場を渡り歩いてきたロックス上等兵を狼狽させた。

仁王立ちの男
「来たな……？」

低く、よく通り声で言う。

師範代カオル
「ダイモンジ！
　新しい門下生を連れて、指定通りに来たわよ！」

武闘家ダイモンジ
「やっと来たか。
　待ちくたびれたぜ……さぁて……。
　まとめて、かかってこいやぁっ！！」]]

  writeline(text)
  battle('66','65',-1,0,0,0)
else
  text = [[見晴らしのいい丘だった。
眼下にモンスターの群れが動いているのが見える。]]

  writeline(text)
  battle('','',-1,0,0,0)
end
