if checkquestoffer(42) == true and checkquestcomp(42) == false and checkeventflag('こころの詩第二楽章',1) == false then
  text = [[石碑を見つけた。

石碑に書かれた詩をメモしていく。

……こころの詩 第二楽章を手に入れた。]]
  
  writeline(text)
  eventflag('こころの詩第二楽章',1,false)
end
