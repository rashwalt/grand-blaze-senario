ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(25) == true and checkquestcomp(25) == false and battleresult() == 0 then
  text = [[……その後、警備隊が到着し、フィリスの彼だったものは、運び出された。
結局、彼を助けることはできなかった。

バーサーカー。
狂ってしまったライカンス。
かつて、存在したその狂戦士は、今日ではもう存在しないはずであった。
だが、なぜ、彼は変異してしまったのだろうか。

後日、警備隊から討伐協力のお礼が送られてきた。
フィリスは今も、嘆き悲しんでいるという。

]] .. getmoneymsg(1500)

  for entry = 1, #partymember do
    if checkcomp(partymember[entry],25) == false then
      getmoneys(partymember[entry],1500)
    end
  end
  
  writeline(text)
  questcomp(25)
elseif checkquestoffer(36) == true and checkquestcomp(36) == false and checkeventflag('導きの月',2) == true and battleresult() == 0 then
  text = [[青白き娘フィリス
「ああ……どうして……どうしてパメラおばさんまで……」

両手で顔を覆い、嘆く。
いったい、何が起こっているのだろうか。

頻発するバーサーカー。

何か、作為的なものを感じる。

だが、ひとまずはフィリスを連れて、]] .. mark(68) .. [[に戻った方がよいだろう。]]
  
  writeline(text)
  eventflag('導きの月',3,false)
end
