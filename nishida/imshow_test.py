import cv2

# 画像を読み込む（適当な画像ファイルのパスに置き換えてください）
image = cv2.imread('../imgs/logo_with_text.png')

# 画像が読み込めているか確認
if image is None:
    print("画像が見つかりません。")
else:
    # ウィンドウに画像を表示
    cv2.imshow('Display Window', image)
    
    # キー入力待ち（0は無限に待つ）
    cv2.waitKey(0)

    # ウィンドウを閉じる
    cv2.destroyAllWindows()
