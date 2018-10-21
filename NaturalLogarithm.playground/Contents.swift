
import Foundation

// 自然対数を求める
// Natural Logarithm

var e = 0.0, t = 1.0
for i in 1 ... 20 {
    e += t
    t /= Double(i)

}

print("e=\(e)")

