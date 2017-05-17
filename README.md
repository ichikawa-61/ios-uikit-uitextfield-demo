# ios-uikit-uitextfield-demo

## 概要
画面上に出てくるキーボードを入力してユーザーがテキストを入力できるオブジェクトを生成するクラス

## 継承元
UIControl

## 実装手順
1.ストーリーボードから、UITextFieldのオブジェクト追加</br>
2.上記をViewControllerと紐付け</br>
3.textViewのdelegateにselfを指定する
4.メソッド実装</br>

## 主要プロパティ                                       
|プロパティ名             |                      説明                                                      |                サンプル              |
|:--------------------|:------------------------------------------------:|:-----------------------------------:|
|hidesWhenStopped  | アニメーション中でない時に、indicatorを隠す       |indicator.hidesWhenStopped = true |                             
|isAnimating               | アニメーション中か確認(Bool)                                  |indicator.isAnimating                        |
|color                 　　  | indicatorに色をつける                                               |indicator.colar = UIColar.red             |

## 主要メソッド
|        メソッド       |                       説明                        |                サンプル               |
|:-----------------|:------------------------------------------------:|:------------------------------------:|
|startAnimating()  |アニメーションスタート                |indicator.startAnimating()  |      
|stopAnimating()   |アニメーションストップ                |indicator.stopAnimating()   |


## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category| Version |
|:---------|:-------:|
| Swift    | 3.02      |
| XCode    | 8.2.1     |
| iOS      | 10.0〜    |

## 参考　https://developer.apple.com/reference/uikit/uitextfield#1965766
