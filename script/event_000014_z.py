
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) == 60 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
{{ msg '背中の曲がった男' '' }}
「盗賊の一部の輩が戻って宝を漁っているようです」
{{ endmsg }}

{{ msg '黒髪の長髪男' '' }}
「捨て置け。
　もとより、奴らの仕事はもうない。
　こちらの邪魔さえしなければ、奴らが何をしようとかまわん」
{{ endmsg }}

長髪の男と背中の曲がった男がいるのは、遺跡の中のようだった。
周囲は暗いが、中心部だけ、光が差し込んでいる。
その中心部に長髪の男がたち、影から背中の曲がった男が、その長髪の男が行っている作業を見つめていた。

{{ msg '背中の曲がった男' '' }}
「ドルガン様。
　ついに、終わりのはじまりが訪れるのですな」
{{ endmsg }}

{{ msg 'ドルガンと呼ばれた男' '' }}
「……そうだ……」
{{ endmsg }}

中心部に備え付けられた台座からつきだした杖を掴む。
特に抵抗があるわけではなく、ドルガンと呼ばれた男の手に杖が収まった。

{{ msg '背中の曲がった男' '' }}
「おお……。
　これが、かの魔神戦争で使われたという砕く杖【レジェンドオブブレイカー】ですな……」
{{ endmsg }}

{{ msg 'ドルガンと呼ばれた男' '' }}
「引くぞ、ゼロット。
　世界を解放するために」
{{ endmsg }}

一方その頃。

{{ msg 'グレッグ' '' }}
「楽勝、楽勝！
　さーて、何が待ってますやら……」
{{ endmsg }}

グレッグを先頭に、最深部を目指す。
そこに待つものとは……。

%s
%s
""" % (ScGet.Mark(15,True), ScName.MsgExp(170))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 70:
			ScGet.QuestStageSet(memberid, 6, 70)
			ScGet.ExpUp(memberid, 170)
		
