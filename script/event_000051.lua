is_battle = true

if checkquestoffer(18) == true then
  text = [[すさまじいほどの闘いがあったかのように、地面には穴がぽっかりと開いている。
だが、街からそれほど離れていないこの場所に、この穴ができた経緯といったものは、一切なかった。
ただ一つ。
ここには、何か、妙なねじれを感じることが出来る。

ここの土を持ち帰ればいいのだろう。
だが、ほとんどが岩石で、持ち帰れそうな土は見つからない。

しばらく探索している内に、妙な気配を感じた！]]
  
  writeline(text)
elseif checkquestoffer(47) == true and ptmembers() == 1 then
  text = [[妙なねじれを感じる場所。
グラウンド・ゼロ。

カーラから言われたとおり、ここに、何かの手がかりがあるらしい。
とはいえ、手がかりと行っても、何もないようだが……。

だが、何かあるのだろう。
この場所には、特別な何かが。

……しばらく捜していると、不意に、何かの気配に気付く！
気がつけば、目の前に炎に包まれた人影がいる！]]
  
  writeline(text)
  addstatus(954,0,false)
  is_battle = false
  battle('179','',0,0,0,0)
else
  text = [[すさまじいほどの闘いがあったかのように、岩ばかりの地面には穴がぽっかりと開いている。
だが、街からそれほど離れていないこの場所に、この穴ができた経緯といったものは、一切なかった。
ただ一つ。
ここには、何か、妙なねじれを感じることが出来る。]]
  
  writeline(text)
end

if is_battle then
  battle('','',-1,0,0,0)
end
