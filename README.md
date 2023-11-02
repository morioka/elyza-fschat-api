# elyza-fschat-api
日本語LLM「elyza/ELYZA-japanese-Llama-2-7b-instruct」をFastChatのAPIとして動かすコンテナの例。  

## 実行方法
フォルダーに移動してdocker-composeを実行

```
git clone https://github.com/shimiz9/elyza-fschat-api.git
cd elyza-fschat-api
docker-compose up --build
```

## 接続方法
エンドポイント：http://ipアドレス:8000/v1  
APIキー：なし、または「EMPTY」などのダミー  
モデル名：  
- チャャット用：gpt-3.5-turbo
- 生成用：text-davinci-003
- エンベディング用：text-embedding-ada-002

## APIの利用方法
基本的にはOpenAIに準ずる  

例：Windowsのコマンドプロンプト（ターミナルからcmd起動）の実行例
```
curl http://localhost:8000/v1/completions -H "Content-Type:application/json" -d "{\"model\":\"gpt-3.5-turbo\",\"prompt\":\"今日のためになる一言を教えてください。\",\"max_tokens\":60,\"temperature\":0.5}"
```

詳細は以下を参照  
https://github.com/lm-sys/FastChat/blob/main/docs/openai_api.md

## 記事

- [賢いと噂の日本語LLM「ELYZA」をウェブAPIで使う！ Power Automateなどからも呼び出せる完全ローカル環境の構築【イニシャルB】 - INTERNET Watch](https://internet.watch.impress.co.jp/docs/column/shimizu/1533974.html)(2023-10-10)
- [NAS+ChatGPTで、共有フォルダーの文書をもとに回答するAIチャットを作る【イニシャルB】 - INTERNET Watch](https://internet.watch.impress.co.jp/docs/column/shimizu/1536506.html)(2023-10-16)
- [AIが「理解」するから、API仕様書のコピペでアプリができあがるローコード開発環境「Flowise」を試す【イニシャルB】 - INTERNET Watch](https://internet.watch.impress.co.jp/docs/column/shimizu/1523766.html)(2023-08-21)

