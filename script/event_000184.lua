ptcount = ptmembers()
partymember = {}
for ptcnt = 1, ptcount do
  partymember[ptcnt] = getptmember(ptcnt)
end

if checkquestoffer(52) == true and checkquestcomp(52) == false and checkeventflag('大地に眠るケモノ',3) == true then
  text = [[ダナクス諸侯連合の美しき観光都市、白い街エンセクトミア。
白い壁や家々で統一され、この街はその美しさと伝統的なレース産業が盛んである。

学者シェリル
「ふう、着いたわね。
　ここまででいいわ。ありがと」

軽くお辞儀をする。

学者シェリル
「また何かあれば、指名させてもらうわ。
　仕事の完了報告は私がしておくから、あとで報酬を受け取るといいわ。
　それじゃね」

手を振り、彼女は白い街の雑踏の中へ消えていった。

]] .. getmoneymsg(5000)
  
  for entry = 1, #partymember do
    if checkcomp(partymember[entry],52) == false then
      getmoneys(partymember[entry],5000)
      orgup(partymember[entry],1,100)
    end
  end

  writeline(text)
  questcomp(52)
else
  text = [[ダナクス諸侯連合の美しき観光都市、白い街エンセクトミア。
白い壁や家々で統一され、この街はその美しさと伝統的なレース産業が盛んである。]]

  writeline(text)
end
