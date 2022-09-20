ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(44) == true and checkquestcomp(44) == false and battleresult() == 0 then
  text = [[戦いを終えると、ガラス細工のような冒険者たちはいなくなっていた。

壁を乗り越えたのだ！

きらきらと、金属が鳴る音が響いた。
ふわりと、まるで天使の羽のように、一冊の本が手元に落ちてくる。

]] .. keyitemgetmsg(65) .. [[

これで、君は「スキル合成」ができるようになった。
自らの持つ、インストールクラスや手に馴染んだ武器、魔法から手に入れたスキルを掛け合わせ、自らのオリジナルのスキルを作り出すことができる。
ただし、作れるのは現段階では１つだけだ。
さらに多くのスキルを作り出すには、さらなる試練が必要となることだろう。]]

  writeline(text)
  questcomp(44)
  tarent(31)
end
