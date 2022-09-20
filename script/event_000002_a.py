﻿if not ScCheck.QuestOffer(2) and not ScCheck.QuestComp(2) and ScCheck.QuestComp(1):
	ScUtil.Print("""
{{ msg '？？？' '' }}
「期待の新星、さっそく来たか！」
{{ endmsg }}

冒険者ギルドで依頼（クエスト）を受けていると、ギルドの二階部分から、誰かが降りてきた。
大柄な男だ。かなりラフな格好だが……自分と同じ冒険者だろうか？

{{ msg '受付ルース' '' }}
「マスター！？
　帰っていたんですね」
{{ endmsg }}

{{ msg 'ギルドマスタージム' '' }}
「おう。
　クリクの奴から期待の新人が入ったと聞いたからな。
　すっとんできたぜ」
{{ endmsg }}

ルースと話し終えると、彼はこちらをじっくりと見つめた。

{{ msg 'ジム' '' }}
「なかなかの面構えじゃねぇか。
　これからが楽しみだぜ。
　じゃ、がんばれよ！」
{{ endmsg }}

満足そうに頷きながら、外へと出て行った。

{{ msg 'ルース' '' }}
「あの人が、冒険者ギルドを統括するギルドマスター、ジム氏です。
　じゃあ、依頼の詳細を説明しますね──」
{{ endmsg }}

今回引き受けた依頼は簡単だ。
%sの北西部に広がる%s、そのさらに北に位置する山脈の麓に小さな村がある。
その村がゴブリンたちに襲われたという話だ。

しかし、問題が一点ある。
それは、村が貧しく、報酬を支払う能力がない、ということだ。
とはいえ、そんな依頼者でも、ギルドは他の依頼からの報酬などから補填することによって、ギルドから冒険者への代理報酬という物が支払われる手はずになっている。
「貧しき者の頼みでも、ギルドは引き受ける」
だからこそ、ギルドには数多くの依頼が舞い込んでくる。
それら数々の依頼を、冒険者たちが解決していくのだ。

%s

徒歩で３日ほど進むと、目的の村が見えてきた。
荒らされた畑、散乱した藁…。
村人たちの表情には疲労と不安の色が濃く出ていた。

そんな村の中でも、少し立派な家から、やつれた顔の老人が出てきた。
彼が、村長だろうか……？

{{ msg 'やつれた顔の老人' '' }}
「おお、もしや、%sも冒険者の方かね。
　わしはこの村の村長で、ケルクと言いますのじゃ。
　外で立ち話もなんじゃ、わしの家へ……」
{{ endmsg }}

ケルクに案内され、彼の家の中へと入る。

{{ msg 'ケルク' '' }}
「いやはや、来てくださって助かりました。
　この村は、見ての通り、貧しい村でしてな。
　それなのに、ゴブリンたちが何度も、家畜や農作物を奪っていくもので、ほとほと困っておったところですじゃ。
　ゴブリンがどこから来るのか、ですと？
　……そうですなぁ、村の若い者の話では、近くの洞窟から来るようです。
　この洞窟は、その昔、高名な司祭様が悪魔を封じた場所でしてな。
　村の者はそこには近付かんのですわい。
　……幸い、村の者にけが人は出ておりませんが、いつけが人が出てもおかしくない状況でしてなぁ。
　そこで、冒険者の方に依頼したわけですわ。
　そういえば……その洞窟、冒険者ギルドの方は、こう言っていましたな。
　『堕ちた聖者の神殿』……だとか」
{{ endmsg }}

そんな話をしていると、遠くから声が聞こえてきた。
ゴブリンがやってきたようだ！

{{ msg 'ケルク' '' }}
「おお、おお……。
　%s！
　今は、どうか助けてくれませんか……！」
{{ endmsg }}

%sは声が聞こえてきた方へ走る！

{{ msg 'ケルク' '' }}
「しかし、先にきたあの方とは知り合いではないのかのぅ……」
{{ endmsg }}

冒険者を見送りつつ、ケルクは呟いた……。

""" % (ScName.ByArea(1), ScName.ByArea(3), ScGet.QuestOffer(2,True), ScGet.GetPlayerName('あなた','あなたがた'), ScGet.GetPlayerName('冒険者の方','冒険者の方々'), ScGet.GetPlayerName('name','nameたち')))
	ScGet.BattleStart('','',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)