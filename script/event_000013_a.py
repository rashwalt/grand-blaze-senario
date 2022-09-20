
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) in [30, 40]:
	
	ScUtil.Print("""
{{ msg 'グレッグ' '' }}
「なるほどねぇ。
　つまり、俺がいるのは、あいつらと%sみたいな鍵を持っている連中……ようは普通には入ってこれない特殊な場所、なんだな。
　ここに連れてこられるまでは目隠しされてたからな……全然わからなかったぜ」
{{ endmsg }}

周囲の壁や地面を触る。
まるで未知のものに触れる少年のようだ。

{{ msg 'グレッグ' '' }}
「外とほとんど変わらないんだな。
　まあ、俺は感覚でしかわかンねぇが……」
{{ endmsg }}

やたらといろいろなところを触る。
幸い、罠が頻繁に仕掛けられているわけではないらしく、今のところ、危険な目にはあっていない。

{{ msg 'グレッグ' '' }}
「お？
　ありゃ、宝箱じゃねぇのか？」
{{ endmsg }}

ずかずかと宝箱に駆け寄り、開けようとする。
こちらが警告しようと駆け寄ろうとするが……。

{{ msg 'グレッグ' '' }}
「うお！？
　なんだこいつぁッ！？」
{{ endmsg }}

宝箱の中から腕が伸び、動き出す！
古い遺跡にいると言われている、ミミックだ……！
""" % (ScGet.GetPlayerName('お前','お前ら'))
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 40:
			ScGet.QuestStageSet(memberid, 6, 40)
	ScGet.BattleStart('29,29,32,32,32,32','4',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
