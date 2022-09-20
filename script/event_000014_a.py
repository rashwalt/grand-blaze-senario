
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) in [50, 60]:
	
	ScUtil.Print("""
ぽつぽつと、開いた宝箱を見つける。
盗賊の姿はなかったが、おそらく、彼らが開けたのだろうと思われる空の宝箱がぽつぽつと転がっていた。

{{ msg 'グレッグ' '' }}
「開いていなかったのが奇跡ってか。
　あるいは、上の命令を聞けなかった奴らが暴走したか、かな……」
{{ endmsg }}

先へ進むと、徐々に明かりが少なくなっていく。
どこか、人を寄せ付けない雰囲気が漂っていた。

{{ msg 'グレッグ' '' }}
「何か出そうだな……。
　注意しろよ、なんか出るぞ……」
{{ endmsg }}

グレッグの言葉に呼応するかのように、カタカタと渇いた音が響く！
"""
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 60:
			ScGet.QuestStageSet(memberid, 6, 60)
	ScGet.BattleStart('','5',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)

