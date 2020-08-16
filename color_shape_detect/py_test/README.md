# opencv-python 顏色/形狀偵測

## 說明
### 注意1
#### 1.程式會自動開啟相機
#### 2.或是用範例圖片
註解掉111行:
`cam=cv2.VideoCapture(0)`
再註解掉89-90行:
```
(ret,img)=cam.read()
self.img_input=img
```
然後把91行註解打開:
`self.img_input=cv2.imread('shapes.jpg')`
讀進圖片shapes.jpg來執行

### 注意2
43行如果出現ERROR
請把原本
`( contours,_) = cv2.findContours(self.mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)`
改成
`(_,contours,_) = cv2.findContours(self.mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)`

## 執行方式
終端機輸入指令
`python table.py`
程式開始執行 會自動跳出兩個視窗
按Ctrl+C即中止程式

## 選擇顏色/形狀來追蹤
預設所有顏色（只有{Blue,Red,Yellow,Green}）
和所有形狀 （只有{triangle,rectangle,Pentagon,Hexagon,Circle}）都看得到
終端機輸入
`'color',points,0` 該顏色和形狀就看不到了（第一個字母大小寫皆可 其他要小寫）
或`'color',points,1` 就又出現了～
例如：
`'yellow',6,0`
黃色六邊形消失
`'red',4,1`
紅色四邊形出現





[HackMD](https://hackmd.io/@5ZSqhL_qRd6de29zZ4lbHw/HJ96I6WfP)
