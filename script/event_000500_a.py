﻿
ScUtil.Print("""
しんしんと降り積もる雪。
その雪を裂くように、目標へと近づく。
依頼にあった目標がいる位置は近いと感じた…。


街は年末と、来たるべき年始に向けて浮かれていた。
子供たちが雪をかき集め、雪合戦を行う。

その様子をにこやかに横目で見ながら、冒険者ギルドへ入ると、冒険者ギルドも、その街の空気そのままに、様々な飾り付けがされていた。
ただ一人……外からは見えない位置にいる赤い服を来た老人の切羽詰まった様子を覗けば。

{{ msg '赤い服の老人' '' }}
「そうじゃ。
　わしの大切な靴下が盗まれたのじゃ！」
{{ endmsg }}

「靴下」の一言に、受付の女性が怪訝な表情を浮かべる。

{{ msg '受付の女性' '' }}
「くつした……ですか。
　……紛失物であれば、警察の方へいかれた方が早く見つかるかと思いますが……」
{{ endmsg }}

{{ msg '赤い服の老人' '' }}
「ただの靴下ではないぞ！
　わしが普段はいている靴下などではない！
　子供たちがこのセント・クリスマスのアリア祭でプレゼントを待つための大事な特注の大きな靴下じゃ！」
{{ endmsg }}

言って、老人は周囲に子供の姿がないことを確認してから、続きを口にする。

{{ msg '赤い服の老人' '' }}
「これを飾っておけば、期日に自動的にプレゼントが靴下の中へ入る、魔法の靴下じゃ。
　最近は忍び込むのも大変での…こんな小細工を使わねばならん。
　じゃが、あれを盗まれてしまえば、本来子供たちに届けられるはずだったプレゼントも届けられないのじゃ！
　是非とも、冒険者に取り戻して欲しいのじゃ！
　あの白猫ディジーから！」
{{ endmsg }}


白猫ディジー。
もちろん、本物の白猫ではなく、ライカンスの盗賊だ。
神出鬼没。様々なものを盗み、時には盗んだものを壊せない箱にしまい込み、追ってきた者をあざ笑う盗賊。

奴が、そこにいた。
大きな金属の箱の後ろから、彼を追ってきたコチラを嘲笑いながら。

{{ msg '白猫ディジー' '' }}
「ひゃははは！！
　まぬけが追ってきたようだな！
　てめぇなんかにこの箱が破れるか～？
　破れるなら破ってみせろよ！
　タダじゃ破らせねぇけどな！」
{{ endmsg }}

ディジーがさっと腕を振り上げると、地面から木の人形が現れた！
金属の箱を壊し、魔法の靴下を取り戻せ！
"""
)

ScGet.Item(27521, 1, False)
members = ScGet.PartyMember()

battle_targets = ['56']

for i in members:
	battle_targets.append('58')
	if len(members) > 1:
		battle_targets.append('58')

ScGet.BattleStart(','.join(battle_targets),'',0,0,0,0)