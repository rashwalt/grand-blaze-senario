
if ScCheck.QuestOffer(1) and ScGet.QuestStage(1) < 20 and ScGet.BattleResult() == 0:
	IsQuestComplete = False

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 1) and ScGet.QuestStagePrivate(memberid, 1) < 20:
			ScGet.QuestStageSet(memberid, 1, 20)
			ScGet.MoneyPrivate(memberid, 500)
			ScGet.ExpUp(memberid, 50)
			IsQuestComplete = True
	
	if IsQuestComplete:
		ScUtil.Print("""
「タイニートレント」の討伐に成功した。
はじめての依頼をクリアしたことを報告しに、%sの冒険者ギルドへ向かう。
すると、ギルドではこの依頼をしてきたクリクがこちらを待っていた。

{{ msg 'クリク' '' }}
「どうやら、無事に成功したようだな。
　こちらでも、君の経歴については簡単に調べさせてもらった。
　最後に、この書類にサインをしてもらえるかな？」
{{ endmsg }}

言って、一枚の書類を見せてきた。
冒険者の心得……「信頼を第１とすること」、「ギルドの不利益につながることはしないこと」……など、ギルド加入の条件なども盛り込まれたものだ。
「この者を、冒険者ギルド所属の冒険者と認定する。マスタージム」……と最後に締めくくられている書類にサインをすませると、クリクはその内容を確かめる。

{{ msg 'クリク' '' }}
「これで、君も冒険者の仲間入りだな。
　……ようこそ、冒険者ギルドへ。
　改めて自己紹介をしよう。
　私は君のような冒険者見習いが冒険者にふさわしいかを審査する審査官、クリク・ベルズハイトだ。
　このあと、どのような冒険をするかは君の自由だが……君に相応しい依頼がいくつかあるようだ。
　ギルドカウンターで受けてみるといいだろう……。
　あるいは、酒場で仲間を募ってみてもいいかもしれないな。
　これを」
{{ endmsg }}

翼と炎が刻まれたペンダントをもらった。
これが、「冒険者ライセンス」なのだろう。

%s

%s
%s
%s
""" % (ScName.ByArea(1), ScGet.QuestComplete(1,True), ScGet.KeyItem(1,True), ScName.MsgMoney(500), ScName.MsgExp(50))
	)
