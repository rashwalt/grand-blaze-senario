
if ScCheck.QuestOffer(8) and ScGet.QuestStage(8) in [30, 40]:
	
	ScUtil.Print("""
武器を構え、攻撃を警戒する。

{{ msg 'エリアルド' '' }}
「待っていただきたい！
　我々はただ、森の賢者殿に会うために……！」
{{ endmsg }}

エリアルドが声を張り上げるが、相手は聞く耳を持っていない。
どうしてこうなったのか……。

そもそもの発端は、森の賢者の領域に入ってからだ。

{{ msg 'エリアルド' '' }}
「森の賢者の領域に入りました。
　……そろそろ村の者が出迎えに来るかと思うのですが……。
　おかしいですね……」
{{ endmsg }}

辺りを見回すが、人の姿はない。

{{ msg 'エリアルド' '' }}
「……少し奥へ行ってみましょう。
　何かあったのかもしれません」
{{ endmsg }}

エリアルドの後をついて行くと、不意に、彼の足下に矢が刺さった。

{{ msg 'エリアルド' '' }}
「──！？」
{{ endmsg }}

身構えると、すぐにエルヴたちが姿を現す。

{{ msg 'エリアルド' '' }}
「私の名はエリアルド・バドクリフ！
　森の賢者セティア・クルセルス殿に会うため参上した！」
{{ endmsg }}

{{ msg 'エルヴたちのリーダー' '' }}
「出て行くことだな。
　命が惜しいならば！」
{{ endmsg }}

リーダーがもう一度、エリアルドの足下に矢を放つ。

{{ msg 'エリアルド' '' }}
「待っていただきたい！
　我々はただ、森の賢者殿に会うために……！」
{{ endmsg }}

相手に聞く耳はないようだ。
まずは武器を構え、相手の戦意をくじけ！！
"""
);

	for memberid in ScGet.PartyMember():
		if ScCheck.QuestOfferPrivate(memberid, 8) and ScGet.QuestStagePrivate(memberid, 8) < 40:
			ScGet.QuestStageSet(memberid, 8, 40)
	ScGet.BattleStart('','6',0,0,0,0)
else:
	ScGet.BattleStart('','',-1,0,0,0)
