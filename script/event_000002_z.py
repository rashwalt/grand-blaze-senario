
if ScCheck.QuestOffer(2) and ScGet.QuestStage(2) == 0 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
村を襲ってきたゴブリンたちは倒した。

{{ msg 'ケルク' '' }}
「おお、倒せたのですな。
　ところで、お仲間は先に向かわれたようですが、%sは追わなくてもよいのですか？」
{{ endmsg }}

仲間とは、誰のことだろう？
ギルドの受付も、他にこの依頼を受けた冒険者はいないと言っていたはずだ。
なにより、多重に契約させるような依頼は、正規の依頼ではあり得ない。
複数の冒険者に依頼すると言うことは、その冒険者を信頼していないということになるからだ。

{{ msg 'ケルク' '' }}
「お仲間ではない……？
　ふむぅ。では、たまたま通りがかったのでしょうか……。
　ともかく、彼……確か、名は、ロバートと言っていましたな。
　彼はこの奥にある洞窟へ向かいました。
　そこから、ゴブリンたちがやってきているようじゃ」
{{ endmsg }}

同じ冒険者ならば、一人でゴブリンの場所へ向かうのは無謀とも言える。
すぐに彼のあとを追い、%sへ向かうとしよう。

%s
%s
""" % (ScGet.GetPlayerName('あなた','あなたがた'), ScName.ByMark(3), ScGet.Mark(3,True), ScName.MsgExp(30)))

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 2) and ScGet.QuestStagePrivate(memberid, 2) < 10:
			ScGet.QuestStageSet(memberid, 2, 10)
			ScGet.ExpUp(memberid, 30)
