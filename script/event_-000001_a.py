
ScUtil.Print('''
{{ msg '？？？' '' }}
「君か、冒険者志望者というのは」
{{ endmsg }}

町並みを眺めていると、不意に声をかけられた。
茶色い革のコートを着込んだ壮年の男性だ。
腰には剣を携えている。

{{ msg '茶色いコートの紳士' '' }}
「私の名はクリク・ベルズハイト。
　冒険者ギルドの審査官だ」
{{ endmsg }}

そう言って、彼は手を差し出してくる。
握手で返すと、彼はこちらを安心させるように微笑んだ。

{{ msg 'クリク' '' }}
「今から話す内容は、冒険者になるための試験と考えてもらいたい。
　なに、そう難しいことではない。
　……%sは知っているね。
　あそこの開闢の平原と呼ばれる場所には、%sという小さな植物型の魔物がいる。
　この魔物はそう脅威ではないが、試験というのは他でもない、この魔物を倒してきてもらいたいのだ。
　無事に討伐に成功したら、直接、君の元に報酬が届けられる。
　不安ならば、仲間を集ってクエストに出発するのもいい。
　パーティを組むかどうかは、双方が同意しているならば、制限はない。
　気をつけて行けよ」
{{ endmsg }}

%s
''' % (ScName.ByArea(3), ScName.ByMonster(1), ScGet.QuestOffer(1,True))
)
