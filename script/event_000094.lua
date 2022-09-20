ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(31) == true and checkquestcomp(31) == false and battleresult() == 0 and checkeventflag('青い花',1) == true then
  text = [[元車掌ファルク
「そうか、このペンダントのおかげだったんだ……」

言って、彼は墓にかけられたペンダントを見つめた。

元車掌ファルク
「彼女がここに埋葬してくれといったとき、正直私たちは反対しました。
　そりゃ、当時は今ほど、モンスターの数も多くなければ、ここには鉄道が走っていましたが……。
　ここには、駅もありませんでしたからね。
　でも、彼女はここの景色が好きだったんです。
　ぬけるような青い空と、草原が。
　だから、彼女はここに埋葬されて……私は、一年に一度、ここへ墓参りに来ることになったんです。
　彼女が愛用していた銃を持って。
　……それでは、帰りましょうか」

]] .. getmoneymsg(3000)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],31) == false then
      getmoneys(partymember[entry],3000)
    end
  end

  writeline(text)
  questcomp(31)
end
