/*
 OverLoad
 */

// 型宣言しない場合
let m = ("monkey.jpg", 161_022)

// 型宣言した場合
let n : (String, Int) = ("monkey.jpg", 161_022)



let cat = ("cat.jpg", 1024, 768)
var img : (String, Int, Int) = cat    // 代入できる
// img = m      // エラー。"m" is "String, Int". img is "String, Int Int"

print("\(img.0): \(img.1)x\(img.2)")
img.2 = 800
print("\(img.1)x\(img.2)")


/*
 タプルと代入操作
 */
let photo = ("tiger.jpg", 640, 800)    // タプルをつくる
let (file, width, height) = photo
print("\(file): \(width)x\(height)") // tiger.jpg: 640x800

// 1つだけ使う
let (file2, _, _) = photo


let pic = ("snake.png", (768, 1024))    // tuple inside tuple
let (file3, (w, h)) = pic                // 要素の取り出す
let (name, _) = pic                     //  fileだけ取り出す

var x = 100, y = 0
(x, y) = (y, x)     // xとyの値を交換する
print("x=\(x), y=\(y)")  // x=0, y=100と出力


