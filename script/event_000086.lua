if checkquestoffer(30) == true and checkquestcomp(30) == false and battleresult() == 0 and checkeventflag('二つの道',1) == true then
  text = [[ザムダックの姿は、どこかに消えていた。

壮年の男性
「すまないな、]] .. player('冒険者','冒険者たち') .. [[よ。
　……気がついているかもしれないが、私の名はケルガーだ。
　獣人王などと呼ばれてはいるが……身近な民一人も救えぬ愚かな男さ。
　さて、差出人不明などという依頼を受けてもらって助かった。
　王国の影を使ってあのような不審な渡し方しかできなくてな、申し訳ない。
　さて、事情を説明しよう。
　……ザムダックには、ルイスという双子の兄弟がいる。
　彼らはある一族の出身者でな。
　その一族は、双子は禍として双子同士で力を賭けて殺しあうという掟があった。
　まったく、馬鹿な掟だが、一族にとっては真面目なものだ。
　だが、その一族も、すでに滅び、彼らが、一族の最後の双子だ。
　私は、ある事件で彼らと知り合い、二人の宿命を変えてみせようと必死に動いた。
　だが、彼らの血がそうさせたのだろうな。
　あの通り、互いに互いを滅ぼさんとしている。
　これは、私の、ただのエゴなのかもしれない。
　だが、彼らが戦いあうことに、意味など無い。
　彼らは、過去に縛られているだけなのだ。
　古の呪縛に捕らわれているだけなのだ。
　そこで、自由な心を持つ冒険者である]] .. player('貴公','諸君') .. [[に頼みたい。
　彼らを、止めてくれ。
　頼む……ザムダック達は、]] .. mark(59) .. [[にいるはずだ」]]

  writeline(text)
  eventflag('月下の剣士・希望ルート',1,false)
  eventflag('二つの道',2,false)
end