
if ScCheck.QuestOffer(2) and ScGet.QuestStage(2) in [30, 40]:
	ScUtil.Print("""
中庭へと続く扉を手に入れたカギで開けると、傍らに鈍い色を放つ大きな石が浮かんでいた。

{{ msg 'ロバート' '' }}
「ここにもあるのか…。
　ああ、こいつは【大魔晶石】って言われてる奴だ。
　普段は何もないが、そのペンダントを持つ者が触れると、力をくれるらしい。
　試しに触ってみなよ」
{{ endmsg }}

ロバートに言われるまま、その【大魔晶石】に触ってみた。
淡い光が石から発し、力と魔力が漲ってくる……！

%s

{{ msg 'ロバート' '' }}
「この【大魔晶石】。
　昔は確かになかったんだけどな。
　……ここ数年くらいか。こいつが見られるようになったのは……。
　まあ、便利だから使わせてもらうだけ、だがな」
{{ endmsg }}

言って、部屋の中を見回す。
一段高く作られた噴水の上で、こちらを睥睨するゴブリンシャーマンがいた。
その周囲には、護衛であろうゴブリンが数体いる。

{{ msg 'ゴブリンシャーマン' '' }}
「キキキ……。
　ワレラノセイイキ、マモル！
　オマエタチ、オワリ！」
{{ endmsg }}

ゴブリンシャーマンが何かを発すると、ゴブリンたちが一斉に襲いかかってきた！
""" % ScGet.RepairAll(True)
);

	for memberid in ScGet.PartyMember():
		
		if ScCheck.QuestOfferPrivate(memberid, 2) and ScGet.QuestStagePrivate(memberid, 2) < 40:
			ScGet.QuestStageSet(memberid, 2, 40)
	ScGet.BattleStart('14,15,15,8,9,10','2',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
