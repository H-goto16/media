% 文字列の設定
str = "昨年、息子とディズニーランドに行きました。"

% 形態素解析
document = tokenizedDocument(str);

% 品詞詳細分類
tokenDetails(document)

% 文字列から句読点消去と表示
newdocument = erasePunctuation(document);
disp(newdocument);

