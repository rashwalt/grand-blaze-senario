
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) in [50, 60]:
	ScUtil.Print("""
{{ msg 'ミリュ' '' }}
「やっと出口かな……」
{{ endmsg }}

冷たい風が流れ込んでくる。
ミリュの言うとおり、近くに出口があるようだ。

{{ msg 'ミリュ' '' }}
「あっ、ちょうどいいところに！」
{{ endmsg }}

ミリュが駆け寄った先に、【大魔晶石】が浮かんでいた。
ミリュと共に、【大魔晶石】に触ってみた。
淡い光が石から発し、力と魔力が漲ってくる……！

%s

{{ msg 'ミリュ' '' }}
「これで安心して出られそうだね。
　やれやれだよ……」
{{ endmsg }}

だが、そんな安堵を裏切るかのように、水場と水場の間にある足場に炎の塊が現れる。
炎の塊は見る間に形を変え、狼の姿となる！

{{ msg 'ミリュ' '' }}
「この水路の番犬、ってところかな！！」
{{ endmsg }}
""" % ScGet.RepairAll(True)
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 60:
			ScGet.QuestStageSet(memberid, 4, 60)
	ScGet.BattleStart('27','3',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
