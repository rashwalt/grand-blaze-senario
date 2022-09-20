
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) == 0 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
盗賊たちを倒し、彼らが守っていたらしい謎の扉の前に進む。
その扉は不思議な螺旋状の模様が真ん中に象られていた。
ホランドから渡された%sと、かつて神殿にいたゴブリンが持っていた%sが突如、共鳴するかのように光り始める。
それに反応するように、扉の螺旋模様も光り始め、螺旋模様の真ん中にぽっかりと穴が開く。
その穴の中へ%sを差し込む。
すると、差し込んだ先から扉が開く……！

%s
%s
""" % (ScName.ByKeyItem(7), ScName.ByKeyItem(2), ScName.ByKeyItem(7), ScGet.Mark(12,True), ScName.MsgExp(150))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 10:
			ScGet.QuestStageSet(memberid, 6, 10)
			ScGet.ExpUp(memberid, 150)
		
