
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) == 20 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
モンスターを撃退して少し進むと、乱暴に縄で縛られたバルタンの男を見つけた。

{{ msg '縛られた男' '' }}
「うぅ……誰だ……？」
{{ endmsg }}

盗賊たちに捕まっていたのだろうか。

{{ msg '縛られた男' '' }}
「……俺は何も知らないぞ……」
{{ endmsg }}

うわごとのように呟いてから、彼はこちらをみてきた。

{{ msg '縛られた男' '' }}
「……%sは……盗賊……じゃないのか……？」
{{ endmsg }}

事情を説明し、彼の縄を解く。

{{ msg '縛られていた男' '' }}
「俺は、グレッグ。
　グレッグ・シルマリオンだ。
　%sと同じ冒険者だ」
{{ endmsg }}

自らの傷の具合を確かめ、問題ないことを確認すると、シャドーボクシングのように手を突き出した。

{{ msg 'グレッグ' '' }}
「万事快調だな！
　ああ、なんでこんなところにいるのかって？
　いやなぁに、最近この遺跡を盗賊が根城にしているって言うからな、退治しに来たってわけよ！
　だが、いやいや、さすがに一人で全部を相手にするのは無理がありすぎたみたいだぜ、ハッハッハッハッハッ！！」
{{ endmsg }}

大きな声で笑う。
他の盗賊に気付かれるかもしれないと注意すると、グレッグはにやりと笑って見せた。

{{ msg 'グレッグ' '' }}
「へへ、すまねぇ。
　だが、%sも来たって事はそれなりの腕があるってことだ。
　なら、何も問題ないだろ？」
{{ endmsg }}

問題だらけのような気がするが、彼は気にしていないようだった。

{{ msg 'グレッグ' '' }}
「んじゃ、先に行きますか。
　武器もないが、まあ、なんとかなるだろ。
　行くんだろ？この先へ……」
{{ endmsg }}

遺跡には、まだ奥があるようだ……。

%s
%s
""" % (ScGet.GetPlayerName('お前','お前ら'), ScGet.GetPlayerName('お前','お前ら'), ScGet.GetPlayerName('お前','お前ら'), ScGet.Mark(13,True), ScName.MsgExp(150))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 30:
			ScGet.QuestStageSet(memberid, 6, 30)
			ScGet.ExpUp(memberid, 150)
		
