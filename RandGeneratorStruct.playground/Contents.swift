// 乱数をつくるStruct

public struct RandGenenrator {
    private var rnd: UInt               // 乱数の計算結果
    init(seed:Int) {
        rnd = UInt(seed)                // 乱数の初期値
    }
    mutating func random() -> Int {
        rnd = (rnd &* 10777) &+ 13577   // 混合合同法
        return Int(rnd & 0xffff)        // 0xffff までの乱数を返す
    }
    mutating func xrand() -> Int {      // 偏りのある乱数
        let n = random() & 0x07
        return random() >> n
    }
}
