
if ScCheck.QuestOffer(7) and ScGet.QuestStage(7) == 0 and ScGet.BattleResult() == 0:
	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 7) and ScGet.QuestStagePrivate(memberid, 7) < 10:
			ScGet.QuestStageSet(memberid, 7, 10)
			ScGet.ExpUp(memberid, 300)
			ScGet.ItemPrivate(memberid, 20505, 1)

	ScUtil.Print("""
{{ msg 'バラク' '' }}
「いや～～～～ん！！
　これよ、これ！！
　あたしが求めてたのは、こ・れ・よ！！！」
{{ endmsg }}

倒した羊から毛皮をはぎ取り、バラクの待つ場所へと持っていく。
すると、依頼してきた以上のうねうね具合で感激した。

{{ msg 'バラク' '' }}
「この柔らかな質感。
　この煌めき……もう最高だわ！！
　お礼に、あたしの最初の傑作をあげるわ！！！！！」
{{ endmsg }}

しばらくすると、バラクはケープを持ってきた。

{{ msg 'バラク' '' }}
「お礼よ。
　これが、キャサリンの最高のケープ！！」
{{ endmsg }}

……名前がいつの間にか変わっているが……。
無理矢理押しつけられる形で、ケープを受け取った。

%s
%s
%sを手に入れた！
""" % (ScGet.QuestComplete(7,True), ScName.MsgExp(300), ScName.ByItem(20505)))

