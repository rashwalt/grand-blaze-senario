
if not ScCheck.QuestOffer(3) and not ScCheck.QuestComp(3) and ScCheck.SP(4):
	ScUtil.Print("""
%sのメインストリートを歩いていると、こんな声が聞えてきた。

{{ msg '細面の奥様' '' }}
「それでね、あの噂のア・レ！　試してみたのよ」
{{ endmsg }}

{{ msg 'ふくよかな奥様' '' }}
「あら！　どうでした？」
{{ endmsg }}

{{ msg '細面の奥様' '' }}
「もうおいしいわぁ。
　いろいろな料理に活用できるけれど、やっぱり、トマトだけのサラダが一番いいわね」
{{ endmsg }}

{{ msg 'ふくよかな奥様' '' }}
「そうそう。
　%sのサラダ！！
　トマトの甘い味がとってもジューシーね！！
　あれだったら、いくらでも買い取るわよ……」
{{ endmsg }}

もし手に入れたら、売ってみるのもいいかもしれない。
そう思いながら、%sの「ダーの平原」と呼ばれる場所へと向かう。

%s

……そこは、一面赤色の平原だった。
その赤は、トマト。
トマトで埋め尽くされている平原だった。

……その中の数体が、こちらに近づいてくる……！？
""" % (ScName.ByArea(1), ScName.ByItem(24510), ScName.ByArea(3), ScGet.QuestOffer(3,True))
)
	ScGet.BattleStart('','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)