// inout引数

func mySwap(_ a: inout Int, _ b: inout Int) {
    let t = a; a = b; b = t   // 3つの変数wの値を入れ替える
}

var x = 100
var y = 0
mySwap(&x, &y)



/*
 関数の引数に既定値を指定する
*/

// 引数に規定値が指定された関数
let fontSize: Float = 12.0

func setFont(name:String, size:Float = fontSize, bold:Bool = false) {
    print("\(name) \(size)" + (bold ? " [B]" : ""))
}

func setGray(level:Int = 255, _ alpha:Float = 1.0) {
    print("Gray=\(level), Alpha=\(alpha)")
}


setFont(name: "RaglanPunch")              // RaglanPunch 12.0
setFont(name: "Courier", bold: true)      // Courier 12.0 [B]
setFont(name: "Times", size: 16.0, bold: true)

setGray()           // Gray=255, Alpha=1.0
setGray(level:240)  // Gray=240, Alpha=1.0
setGray(level:128, 0.5) // Gray=128, Alpha=0.5


