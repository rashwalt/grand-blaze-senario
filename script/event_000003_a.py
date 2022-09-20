
if ScCheck.QuestOffer(2) and ScGet.QuestStage(2) in [10, 20]:
	ScUtil.Print("""
戦いの音が内部から聞こえてきた。
何者かが既に戦っているようだ。

{{ msg '戦っている冒険者' '' }}
「まさか、調査にきた神殿が、ゴブリンどもの巣窟になっているとはな！」
{{ endmsg }}

大聖堂の正面にはこの神殿で祭っていたのであろう、巨大な鳥の姿が、松明の明かりに照らされ赤く映し出されていた。

{{ msg '戦っている冒険者' '' }}
「ほう、冒険者かい！
　俺はロバート！
　とりあえず、手伝ってくれると、うれしいんだがな！」
{{ endmsg }}

攻撃を仕掛けてきたゴブリンウォッチャーの攻撃を回避し、切り伏せる。
彼と協力し、このゴブリンたちを倒すのが得策だろう！
"""
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 2) and ScGet.QuestStagePrivate(memberid, 2) < 20:
			ScGet.QuestStageSet(memberid, 2, 20)
	ScGet.BattleStart('','2',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
