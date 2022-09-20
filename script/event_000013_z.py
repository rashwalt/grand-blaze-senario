
if ScCheck.QuestOffer(6) and ScGet.QuestStage(6) == 40 and ScGet.BattleResult() == 0:
	ScUtil.Print("""
{{ msg 'グレッグ' '' }}
「わりぃ、まさかモンスターがバケていやがるなンてな」
{{ endmsg }}

ミミックを無事に撃退した後、彼は謝った。

{{ msg 'グレッグ' '' }}
「しかし、仮にも宝箱だったんだから、なんか持ってねぇかな…？」
{{ endmsg }}

ごそごそとミミックの残骸を漁る。

{{ msg 'グレッグ' '' }}
「おっ。こいつなんか使えそうじゃねぇか！」
{{ endmsg }}

残骸から引っ張り出したのは、少し錆び付いた斧だった。
斧を素振りし、握りを確かめる。
納得がいったのか、腰の留め具に斧を引っかけた。

{{ msg 'グレッグ' '' }}
「こいつで百人力だぜ…！
　よっしゃ！
　先へ行こうぜ！」
{{ endmsg }}

グレッグを先頭に先へ進む。
この奥で、盗賊たちは何をしているのだろうか…？

%s
%s
""" % (ScGet.Mark(14,True), ScName.MsgExp(150))
	);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 6) and ScGet.QuestStagePrivate(memberid, 6) < 50:
			ScGet.QuestStageSet(memberid, 6, 50)
			ScGet.ExpUp(memberid, 150)
		
