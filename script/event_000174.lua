ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(50) == true and checkquestcomp(50) == false and battleresult() == 0 then
  text = [[盗賊たちを倒した。

他の場所でも迎撃に成功したようだ。
気を失っている盗賊達は傷の具合を見た上で、相応の処罰を受けるだろう。

髭を蓄えたフランクがこちらにやってきた。

警備隊員フランク
「おお、成功したか！
　いやはや、]] .. player('君','君達') .. [[のような英傑に協力してもらって、本当に助かったぞ！」

満足そうに彼は己の髭をなでていた。

警備隊員フランク
「おぉ、報酬を渡さねばな。
　ご苦労だった！」

]] .. moneygetmsg(3000)

  writeline(text)
  tarent(36)
  questcomp(50)
  useitem(3211,1)
end
