
if ScCheck.QuestOffer(2) and ScGet.QuestStage(2) == 40 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 2) and ScGet.QuestStagePrivate(memberid, 2) < 50:
			ScGet.QuestStageSet(memberid, 2, 50)
			ScGet.MoneyPrivate(memberid, 1000)
			ScGet.ExpUp(memberid, 200)
			ScGet.ItemPrivate(memberid, 24050, 1)
			ScGet.KeyItemPrivate(memberid, 2)

	ScUtil.Print("""
{{ msg 'ロバート' '' }}
「やれやれ。
　なんとかなったか……」
{{ endmsg }}

ゴブリンたちの亡骸を確認しながら、彼は言う。

{{ msg 'ロバート' '' }}
「これで、ゴブリンたちは勝手にいなくなり、村に平和が戻る、と……。
　ああ、俺はもう少しここを調べていくから、%sは帰っても平気だぜ」
{{ endmsg }}

言いながら、ロバートはゴブリンシャーマンの持ち物を確認している。

{{ msg 'ロバート' '' }}
「ふむ……。
　おっと、そうだ、%s！
　こいつを持っていくといい」
{{ endmsg }}

小さな、そしてなんの変哲もない指輪を投げてよこす。

{{ msg 'ロバート' '' }}
「こいつが持っていた！
　そいつは、%sのものだ！
　依頼の最中に手に入れたものは冒険者のものだからな、そいつは戦利品として持っていくといい！」
{{ endmsg }}

ロバートと別れ、村に戻ると、村長や村の人々が心配と安堵が入り交じった表情で出迎えてくれた。

{{ msg 'ケルク' '' }}
「おお、ご無事じゃったか。
　なかなか戻ってこないので、心配しておったのじゃ…」
{{ endmsg }}

ゴブリンを討伐したことを報告すると、心配の表情が消え、歓喜の色に包まれた。

{{ msg 'ケルク' '' }}
「おお……おお……。
　これで、村に平和が戻りますじゃ……！
　ありがとう、本当にありがとう……。
　そうじゃ、これを、お持ちになってくだされ」
{{ endmsg }}

村の女性たちから、素朴な手料理を渡された。
携帯に便利なように小さくまとめられた料理だ。
ありがたくいただき、冒険者ギルドのある%sへと戻ることにした……。

%s

%s
%s
%s
%s
""" % (ScGet.GetPlayerName('あんた','あんたたち'), ScGet.GetPlayerName('あんた','あんたたち'), ScGet.GetPlayerName('あんた','あんたたち'), ScName.ByArea(1), ScGet.QuestComplete(2,True), ScName.MsgItem(24050,1), ScName.MsgMoney(1000), ScName.MsgExp(200), ScName.MsgKeyItem(2)))

