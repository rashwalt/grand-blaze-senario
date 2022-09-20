
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) == 40 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
ミリュが倒した謎の人物たちの荷物を漁る。

{{ msg 'ミリュ' '' }}
「一体何者なのかな……。
　これって……」
{{ endmsg }}

何かを見つけたのか、ミリュは彼らから取り上げた何かを見つめる。
なにをみつけたのだろうか……？

{{ msg 'ミリュ' '' }}
「……見て。
　詳細はきちんと調べないとわからないけど……。
　削られた部隊章。つまり、どこかの軍隊ってこと。
　うーん、こういうの得意な人が知り合いにいるから、詳しくはボクの方で調べてみる。
　もちろん、無事に出られたら、ね」
{{ endmsg }}

まもなく脱出できる気がする…。
しかし、そこには何か、巨大な障害があるのではないか……。
そんな、予感が走った。

%s
%s
""" % (ScGet.Mark(9,True), ScName.MsgExp(130))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 50:
			ScGet.QuestStageSet(memberid, 4, 50)
			ScGet.ExpUp(memberid, 130)
		
