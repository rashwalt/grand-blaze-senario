ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(18) == true and battleresult() == 0 then

  move(11)

  text = [[現れた奇妙なモンスター。
それは、どこかいびつで、この世界には存在するはずがないと、直感……あるいは、“もう一人の自分”が告げていた。

とはいえ、モンスターを倒し、安全を確保したのは事実。
また現れる前に、土を見つけ、ここから離れるべきだろう。

……。
しばらく捜索すると、無事に、目的の土を見つけた。
もつと、どこか、もの悲しい気持ちになってくる。
あとは、これを持ち帰るだけだ。

]] .. keyitemgetmsg(72) .. [[

～ ]] .. markname(11) .. [[ ～

受付ジョーイ二等兵
「ご苦労さん。
　土は……うん、確認した。
　不思議な土だろ？
　一見、何の変哲もないが、この土を触ると、なんか、もの悲しくなってくるんだよな。
　じゃ、これが報酬だ」

]] .. getmoneymsg(800)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],18) == false then
      getmoneys(partymember[entry],800)
    end
  end
  
  usekeyitem(72)
  writeline(text)
  questcomp(18)
  tarent(9)
elseif checkquestoffer(47) == true and battleresult() == 0 and ptcount == 1 then
  text = [[援軍が来なかったら、もしかしたら危なかったかもしれない。

カーラに頼まれた手がかりは]] .. companionnameentry(partymember[1]) .. [[が見つけたようだ。
……小さな、七色の輝きを持った水晶だった。

見つけた水晶は]] .. companionnameentry(partymember[1]) .. [[がカーラに持って行ってくれるそうだ。
代わりに、ペンダントを手渡された。

]] .. itemgetmsg(3210,1) .. [[

コンパニオンを呼べるようになりました。
]] .. itemname(3210) .. [[を使うことで、その更新に限り、コンパニオンを呼び出して一緒に戦うことができます。
]]

  
  writeline(text)
  questcomp(47)
  tarent(33)
  getcompanion(partymember[1])
end
