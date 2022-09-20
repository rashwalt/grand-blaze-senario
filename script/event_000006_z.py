
if ScCheck.QuestOffer(4) and ScGet.QuestStage(4) == 0 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
{{ msg 'ミリュ' '' }}
「片付いたみたいだね。
　そういえば、%sはどうして捕まったの？
　何か盗みでもした？」
{{ endmsg }}

脱出に向けて歩きながら、ミリュはたずねてくる。
慌てて、捕まった理由を話す。

{{ msg 'ミリュ' '' }}
「なるほどねぇ。
　郵便配達ついでに、自分が捕まった、か……。
　……何かの陽動かな……」
{{ endmsg }}

小声で言いつつ、彼女も自分の状況を説明する。

{{ msg 'ミリュ' '' }}
「ボクもまあ、似たようなものかな。
　ちょっと、クエストを受けて、ね…。
　捜し物を探していたら、捕まっちゃった」
{{ endmsg }}

言って、頭をかく。
ふと、耳を動かし、ミリュが周囲を見回す。

{{ msg 'ミリュ' '' }}
「水の音……？
　もしかして、地下水路に繋がっているのかも……」
{{ endmsg }}

ミリュを先頭に先へ進むと、たしかに水路が見えてきた…。

%s
%s
""" % (ScGet.GetPlayerName('きみ','きみたち'), ScGet.Mark(7,True), ScName.MsgExp(130))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 4) and ScGet.QuestStagePrivate(memberid, 4) < 10:
			ScGet.QuestStageSet(memberid, 4, 10)
			ScGet.ExpUp(memberid, 130)
		
