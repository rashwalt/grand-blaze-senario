if checkquestoffer(16) and checkeventflag('隊商護衛任務',3) and battleresult() == 0 then
  text = [[気絶している野盗たたちを締め上げ、彼らがどこから来たのかを聞き出す。
……どうやら、この先にある教会の廃墟に、彼らは潜伏しているらしい。
先発隊が野営をくみ、度々通りがかる商人を襲っていたようだ。
だが、どうも、統制がとれすぎているような気がする。

この先の]] .. mark(25) .. [[に、野盗たちのボスがいるようだ。]]
  
  writeline(text)
  eventflag('隊商護衛任務',4,false)
end
