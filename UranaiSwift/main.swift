print("あなたの名前: ", terminator:"")
if let name = readLine() { // 文字列を入力して文字コードの和を作る
    let v = Int(name.utf16.reduce(UInt16(0), &+))
    print("\(name)さんのプログラムは、")
    for (elm, val) in analyzer(v) {
        print("  \(elm):\(val)%", terminator:"")
    }
    print(" でできています。")
}
