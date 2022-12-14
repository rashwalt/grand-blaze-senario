if not ScCheck.QuestOffer(9) and not ScCheck.QuestComp(9) and ScCheck.SP(11):
	ScUtil.Print("""
ファーネルド連邦の西部に、奇妙に世界から切り取られた景色を映し出す場所がある。
そこだけが灰色の世界。
空さえも灰色になっている奇妙な場所は、「グラウンド・ゼロ」と呼ばれ、世界の特異点として機能していた。
故に、その場所における数々の事象は、世界の常識から逸脱しており、調査は難航を極めていた。

その周囲は危険を避けるため、厚い壁で覆われており、中へ入るにも何らかの身分を示さなければ入れない場所だった。
ギルドから渡された認識票を入り口に立つ兵士に見せ、中へ入る。

{{ msg '女性士官' '' }}
「%sか、冒険者というのは」
{{ endmsg }}

こちらを待っていたのだろう、身なりのよい制服に身を包んだ女性が立っていた。

{{ msg 'ジル' '' }}
「私はジル。階級は中尉だ。
　早速だが、%sに頼む仕事の内容を説明しよう」
{{ endmsg }}

入り口からほど近いモニタの並んだテントの中へ入る。
そこで彼女は説明をはじめた。

{{ msg 'ジル' '' }}
「目標地点へと向かい、そこにある白銀の水晶を持ち帰ってくることだ。
　簡単だろう？
　だが、冒険者を雇うのはそれなりの理由がある。
　この周囲には敵性対象がいるのがわかっている。
　だが、並の兵士では歯が立たない。
　これを見てくれ。
　……この区画に存在する敵性対象……我々は『こけら』と呼んでいる」
{{ endmsg }}

モニタの一つに、甲殻類のような奇妙な姿をしたものが映し出される。

{{ msg 'ジル' '' }}
「これが、『こけら』だ。
　人に倒せない敵ではない。だが、軍の貴重な物資をむやみに使うわけにはいかない。
　そこでだ。
　腕の立つ冒険者に回収をお願いすることにした。
　これに水晶を入れ、持ち帰ってくれ。
　よろしく頼む」
{{ endmsg }}

筒状の入れ物を渡し、敬礼するジル。
軽く、返礼を返しつつ、モニタに映っていた目標地点へと向かう。

%s

目標地点は、すべてが灰色の世界だった。
目的の水晶がある場所へ近づくと、周囲に何かが集まる気配を感じた…！
""" % (ScGet.GetPlayerName('お前','お前たち'), ScGet.GetPlayerName('お前','お前たち'), ScGet.QuestOffer(9,True))
)
	ScGet.BattleStart('','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)