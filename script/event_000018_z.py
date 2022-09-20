
if ScCheck.QuestOffer(8) and ScGet.QuestStage(8) == 20 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
{{ msg 'エリアルド' '' }}
「やれやれ。
　このアンデッドはどこから現れているんでしょうかね…」
{{ endmsg }}

倒したアンデッドを検分する。

{{ msg 'エリアルド' '' }}
「自然発生的なものではないようです。
　人為的か何かの装置が作動したのかはわかりませんが、魔法反応が残っているようですね。
　……彼ならば何がおこっているか知っているかと思います。
　急ぎましょう」
{{ endmsg }}

エリアルドはそれ以上話さずに先へと進み始めた。

{{ msg 'エリアルド' '' }}
「……いったい、何があったのです？
　師匠……」
{{ endmsg }}

ぼそっと、エリアルドが呟いた……。
%s
%s
""" % (ScGet.Mark(19,True), ScName.MsgExp(200))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 8) and ScGet.QuestStagePrivate(memberid, 8) < 30:
			ScGet.QuestStageSet(memberid, 8, 30)
			ScGet.ExpUp(memberid, 200)
		
