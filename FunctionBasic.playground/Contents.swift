// Function

import Foundation

func area(h:Double, w:Double) -> Double {
    return h * w     // 面積を求める
}

let a = area(h: 10.0, w: 12.5)


// 引数ラベル
func area(height h:Double, width w:Double) -> Double {
    return h * w
}

let b = area(height: 12.0, width: 13.5)




// 引数ラベルが必要ない場合
func area(_ h:Double, _ w:Double) -> Double {
    return h * w
}

let c = area(10.0, 12.5)



// 仮引数の省略
func compare(_ a: Int, _ b: Int, option _:Bool) {   // 第3番は引数ラベルが設定されていない
}

let d = compare(12, 12, option:true)


// 下線(_:)の特殊な用法
// _ = myGreatProcessT(10, 20)


