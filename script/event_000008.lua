-- バトルオンリーの場所。イベント条件を満たしているとボス出現

if checkquestoffer(7) and checkkeyitem(69) == false then
  text = [[たどり着くと、異様な匂いがあたりに立ちこめていた。
油が燃えるような匂いだ。
手頃な場所を見つけ、そこの水を試験管の中に入れようとする。
だが、突然、背後に殺気を感じた！]]

  writeline(text)

  battle('38','',4,0,0,0)
else
  text = [[少し白っぽい水が流れている。
匂いはしない。
だが、そこにいる生き物たちは、どこか、バランスがとれていなかった。]]

  writeline(text)

  battle('','',-1,0,0,0)
end