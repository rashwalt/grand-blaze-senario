
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) in [30, 40]:
	ScUtil.Print("""
{{ msg '？？？？' '' }}
「急げッ！」
{{ endmsg }}

分かれ道に差し掛かると、不意に声が聞えてきた。
ミリュがさっと物陰に隠れ、こちらに合図してくる。
同じ所へ隠れると、全身を灰色の布で覆った人物が複数人やってくる。

{{ msg '謎の人物' '' }}
「隊長、Ｂ班、あと2分で到着する模様です」
{{ endmsg }}

何か小さな機械を操作していた人物が、一人の人物に話す。

{{ msg '隊長と呼ばれた人物' '' }}
「わかった。
　各員、ここで小休止！
　Ｂ班到着までここで待つ！」
{{ endmsg }}

隊長と呼ばれた人物が指示を飛ばすと、他の人物が周囲を警戒しはじめる。

{{ msg 'ミリュ' '' }}
「いったい、何者なの……？」
{{ endmsg }}

そう呟きつつ、物陰から身を乗り出そうとした。
何者かを判断するために……。

ガタッ

倒れそうになっていた小さな石のブロックがかすかな衝撃で下に落ちる……！

{{ msg '隊長と呼ばれた人物' '' }}
「くっ！
　共和国はすでに伏兵を配置していたか！
　総員、迎撃準備！！」
{{ endmsg }}

{{ msg 'ミリュ' '' }}
「あちゃぁ……見つかっちゃった……！」
{{ endmsg }}

もはや逃げられそうにもない！
身を守るため、武器を抜くのだ！！
"""
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 40:
			ScGet.QuestStageSet(memberid, 4, 40)
	ScGet.BattleStart('41,42,43,43,44,44,42:2:1,43:2:1,43:2:1,44:2:1,44:2:1','3',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
