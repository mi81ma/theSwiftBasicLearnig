func analyzer(_ t: Int) -> [(String, Int)] {
    let elems = ["努力", "怠惰", "幸運", "打算", "誤謬",
        "根性", "徹夜", "信念", "博愛", "疲労", "勤勉", "不安"]
    var rnd = RandGenerator(seed: t)  // 乱数の初期化
    var score = [Int]()
    for _ in 0 ..< elems.count { score.append(rnd.xrand()) }
    let tops = zip(elems, score).sorted{ $0.1 > $1.1 }.prefix(5)
    let total = Double(tops.reduce(0){ $0 + $1.1 })
    return tops.map{ ($0.0, Int(Double($0.1 * 100) / total + 0.5)) }
}
