if checkquestoffer(20) and battleresult() == 0 then
  text = [[夜光花を手にすると、ルッツは突然、泣き崩れた。

薬草士ルッツ
「やっと……やっと手に入れたよ、フィー……！」

ルッツが落ち着くまで、しばらく待つ。
……ようやく落ち着いた彼は、ぽつぽつと、語り始めた。

薬草士ルッツ
「本当は、この薬草を１年前に、手に入れたかったんです。
　これを手に入れて、本当は、フィーに……大切な人のために使いたかった……！
　けど、当時私は、こことは違う場所で、医療の現場に立っていました。
　私の力を必要としている人を放っておくこともできず……。
　……彼女は、最後に、何を言いたかったのだろう。
　本当は、これを使って、彼女の言葉を聞きたかった……」

風が出てきた。
その風が、どこか、「ありがとう」と言っているように聞こえた。

帰り道。
ルッツは懐から、ごそごそと何かを取り出した。

薬草士ルッツ
「そうだ。
　こちらが、報酬です。
　]] .. player('あなた','あなたがた') .. [[の旅に役立つかどうかわかりませんが……」

そう言って、彼は一冊の本を取り出した。
その本が、薄く光り始めた。

……次の瞬間、本は消え、何か力を得たような気がする。

薬草士ルッツ
「……これは……。
　そう、か……。
　ともかく、ありがとうございました」

]] .. installgetmsg(8) .. [[

]] .. keyitemgetmsg(73)
  
  writeline(text)
  questcomp(20)
  tarent(11)
end
