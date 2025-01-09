


### sshする時

```
ssh -L 5900:localhost:5900 naotonishida@oasis-rkmtlab-local
```

で，remote rippleとかから接続できる

### コンテナづくりについて
本家のdockerコンテナをいじって，x11vncを入れてる．x11vncはデフォルトでポート5900に映像を流すようになっている．
また，コンテナの5900ポートがoasisサーバの5900ポートに接続されるようになっている．

Genesis_nishidaディレクトリにおいて
```
docker build -t genesis -f docker/Dockerfile docker
```

コンテナを常駐させたい場合
```bash
docker run -d --name genesis -p 5900:5900 genesis>
```
バックグラウンド（デタッチ）起動
exec bash で立ち上がったシェルは閉じられていませんが、TTYが無い状態でもプロセスは動き続ける
必要に応じて `docker exec -it genesis bash` で再度ターミナルに入れる
明示的に `docker stop genesis` するまで停止しない


### イメージ
![IMG_0692](https://github.com/user-attachments/assets/d21dfb94-0fbe-460d-995c-f04fa4d9c5c8)
