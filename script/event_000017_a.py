﻿if not ScCheck.QuestOffer(8) and not ScCheck.QuestComp(8) and ScCheck.QuestComp(6):
	ScUtil.Print("""
{{ msg 'クリク' '' }}
「おお、久しぶりだな、元気だったか？」
{{ endmsg }}

冒険者ギルドへ入ると、聞き覚えのある声が聞こえた。

{{ msg 'クリク' '' }}
「噂は聞いているぞ。
　なかなかの活躍ぶりだとな」
{{ endmsg }}

%sを審査した審査官のクリク・ベルズハイトだ。
休憩中だったのか、ギルドに併設された酒場で食事をとっていた。

{{ msg 'クリク' '' }}
「うん？
　どうした、何か悩み事でもあるのか？」
{{ endmsg }}

こちらを心配してか、立ち上がり、駆け寄ってくる。
……さきの依頼であったことを話すと、彼は考え込みながら、口を開いた。

{{ msg 'クリク' '' }}
「……そうだな……。
　森の賢者、というのを知っているか？
　%sにいるという数百年は生きているとかいわれている人物だ」
{{ endmsg }}

{{ msg '背後からの声' '' }}
「森の賢者に会うのですか？」
{{ endmsg }}

クリクと話していると、背後から誰かが会話に割り込んできた。
振り向くと、緑色の髪の毛が特徴的な男性が立っていた。
旅装に持ち運べる大きさのバッグを持っている。
冒険者のようだ。

{{ msg 'クリク' '' }}
「おお、久しぶりだな、エリアルド。
　いつ戻った？」
{{ endmsg }}

{{ msg 'エリアルドと呼ばれた男' '' }}
「先ほど。
　久しぶりですね、クリク。
　そして……はじめまして。
　私の名はエリアルド・バドクリフ。
　%sと同じ、冒険者です」
{{ endmsg }}

バッグを置き、丁寧に会釈する。

{{ msg 'クリク' '' }}
「確か、お前は森の賢者の居所を知っているんだったな？」
{{ endmsg }}

{{ msg 'エリアルド' '' }}
「そうです。
　どうでしょう、私も森の賢者殿に用があります。
　共に行くというのは？」
{{ endmsg }}

道を知っているならば心強い。
了承すると彼は再度、会釈した。

{{ msg 'エリアルド' '' }}
「ありがとうございます。
　では、準備ができ次第、出発するとしましょう」
{{ endmsg }}

エリアルドと共に%sへと向かう。
%s

森では、侵入者を警戒したモンスターが徘徊していた……！
""" % (ScGet.GetPlayerName('自分','自分たち'), ScName.ByArea(12), ScGet.GetPlayerName('あなた','あなたがた'), ScName.ByArea(12), ScGet.QuestOffer(8,True))
)
	ScGet.BattleStart('','6',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)