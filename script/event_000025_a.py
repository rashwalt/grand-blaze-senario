
if ScCheck.QuestOffer(11) and ScGet.QuestStage(11) in [10, 20]:
	
	ScUtil.Print("""
{{ msg '？？？？' '' }}
「作業を急げ。
　この機関の出力を使えば、目的を達成できよう」
{{ endmsg }}

機関室の中から、何者かの声が聞こえる。

{{ msg '？？？？' '' }}
「はっ。
　この連動型機関ならば、速度と出力に比例し、目的の出力を確保できるかと」
{{ endmsg }}

{{ msg '？？？？' '' }}
「よろしい。
　目的の出力まで、あとどのくらいかかる？」
{{ endmsg }}

{{ msg '？？？？' '' }}
「３０分、いえ、２０分でできるかと」
{{ endmsg }}

{{ msg '？？？？' '' }}
「１５分で片付けろ」
{{ endmsg }}

{{ msg '？？？？' '' }}
「承知しました」
{{ endmsg }}

その声が聞こえると、がたんと車体が揺れ、速度が上昇していく。

早く機関室を制圧しなければならない！

扉を開け、中へ突入する！

{{ msg '？？？？' '' }}
「%sは……」
{{ endmsg }}

兜を被った男が振り返る。
この集団のリーダー格だろうか。

{{ msg '兜の男' '' }}
「抵抗する者というのはいつまでも目障りだな。
　……いいだろう。
　我が名はバルドール！
　我が剣の糧となり、我らの力を思い知るがいい！」
{{ endmsg }}

バルドールが武器を抜く！
さあ、機関室を制圧せよ！！！
""" % (ScGet.GetPlayerName('貴様','貴様ら'))
)

	ScGet.RepairAll(False)

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 11) and ScGet.QuestStagePrivate(memberid, 11) < 20:
			ScGet.QuestStageSet(memberid, 11, 20)
	ScGet.BattleStart('67,68,68,68','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
