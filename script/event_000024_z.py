
if ScCheck.QuestOffer(11) and ScGet.QuestStage(11) == 0 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
{{ msg 'プラート' '' }}
「よし、制圧できたな。
　……私は後方の客室を制圧する。
　すまんが、機関室の方を制圧してくれ。
　よろしく頼んだぞ！」
{{ endmsg }}

プラートの言葉に従い、機関室へと向かう…！

%s
%s
""" % (ScGet.Mark(25,True), ScName.MsgExp(2500))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 11) and ScGet.QuestStagePrivate(memberid, 11) < 10:
			ScGet.QuestStageSet(memberid, 11, 10)
			ScGet.ExpUp(memberid, 2500)
		
