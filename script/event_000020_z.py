﻿
if ScCheck.QuestOffer(8) and ScGet.QuestStage(8) == 60 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
アンデッドを撃退してしばらく行くと、一冊の本が置かれているのを見つけた。

{{ msg 'エリアルド' '' }}
「これは……誰かがここを調べたときのメモ、のようですね」
{{ endmsg }}

ぱらぱらとメモをめくり、中身を確認する。

{{ msg 'エリアルド' '' }}
「遺跡を調べて、78日……。
　この遺跡が建造された目的が大まかにだが理解できた……」
{{ endmsg }}

エリアルドが読み上げる。

　神話の時代、魔法文明時代に作られた遺跡であることは間違いない。
　新聖暦から始まる文明と、それ以前の時代に建造された遺跡は全く根本からしてその設計・運用方法が異なる。
　しかし、その施設の目的は、推察することができる。
　この遺跡の目的は２つあることがわかった。
　一つは「永遠の命の探求」。
　一つは「神々の指輪の機能調査」。
　残念ながら、神々の指輪というものがなんなのか、そして、それがどんなものなのかはわからなかった。
　だが、永遠の命の探求が何をしているのかはわかった。
　そして、それが結果的にどうなったのかも。
　……今、この遺跡は機能を停止している。
　だが、その探求の過程で生み出された化け物がいる。
　アンデッドだ。
　この遺跡が機能を停止している間は新たに生み出されることはない。
　今までに生み出されたものはすでに動くこともないようだ。
　古代の人々が封印させた結果だろう。
　だが、再びこの遺跡の機能が動くようなことがあれば、アンデッドが量産されるのは時間の問題だ。
　……もし、機能が動き出したときに取るべき対策は一つ。
　奥にある量産装置を破壊するか、何かの方法で止めるしかない。
　だが、破壊した結果、何が起こるのかは予測ができない。
　しかし、正常に止める手立てがわからない我々には、破壊という方法しかとれないのではないだろうか。
　破壊によって何が起きるのかは推測でしかないが、少なくとも、この脅威に対して現代の我々が取れるのはこれしかない……。

{{ msg 'エリアルド' '' }}
「……この後は、具体的な破壊方法についての考察が書かれているようですね。
　……外圧を加えることで高負荷を与える。
　すると、高圧力に耐えきれなくなった装置は機能を停止する……。
　セティア様が、かつて書いた文章のようですね」
{{ endmsg }}

メモの最後に書かれた署名を見せてくる。
確かに、セティア・クルセルスと書かれている。

{{ msg 'エリアルド' '' }}
「……外圧、というのは、おそらく……最も耐久力のある、いや、最も最大HPが高いのが、この装置になるでしょう。
　その装置に対して外圧……ダメージを与えることで、装置を破壊できるものと思われます。
　……準備ができ次第、行くとしましょうか」
{{ endmsg }}

すでに動き始めている装置を破壊し、指輪の謎を解くとしよう…！

%s
%s
""" % (ScGet.Mark(21,True), ScName.MsgExp(300))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 8) and ScGet.QuestStagePrivate(memberid, 8) < 70:
			ScGet.QuestStageSet(memberid, 8, 70)
			ScGet.ExpUp(memberid, 300)
		
