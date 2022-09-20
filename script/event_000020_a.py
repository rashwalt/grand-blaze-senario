
if ScCheck.QuestOffer(8) and ScGet.QuestStage(8) in [50, 60]:
	
	ScUtil.Print("""
翌朝、エリアルドと合流した%sは、森の賢者セティアの語った古代遺跡へと向かった。

{{ msg 'エリアルド' '' }}
「情報をまとめると、こうなるようです」
{{ endmsg }}

聞いた話を自分の中で再度整理しながら、エリアルドは話す。

{{ msg 'エリアルド' '' }}
「まず、そもそも、この森に大量発生しているアンデッドですが……。
　聞いた話によれば、古代の遺跡があるとされる方角から現れるそうです。
　少なくとも、それ以外の方角から現れたことはないということで、まず間違いなく、古代遺跡が原因と見ていいでしょう。
　それと、もう一つ。
　アンデッドが現れ始めたのは、比較的最近だそうです。
　……%sが指輪を手に入れた時期と一致するのではないかと」
{{ endmsg }}

エリアルドの説明を聞きながら進むと、森の中で隠すようにある石造りの入り口を見つけた。
ここが、古代の遺跡だろう。

{{ msg 'エリアルド' '' }}
「……見てください。
　何かが這いずった跡があります。
　……おそらくアンデッドでしょう。
　中へ入って、調査してみましょうか」
{{ endmsg }}

古代遺跡の中にはアンデッドがいたと思われる痕跡が数多く残されていた。
落ちた肉片。
削れた得体の知れない塊。
そして、蠢くアンデッド。

{{ msg 'エリアルド' '' }}
「……このアンデッドたちは、この遺跡で生み出されているのかもしれませんね……」
{{ endmsg }}

思案する冒険者らに、遺跡に這い寄るアンデッドが襲いかかってくる……！
""" % (ScGet.GetPlayerName('冒険者', '冒険者ら'), ScName.ByKeyItem(2))
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 8) and ScGet.QuestStagePrivate(memberid, 8) < 60:
			ScGet.QuestStageSet(memberid, 8, 60)
	ScGet.BattleStart('','6',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
