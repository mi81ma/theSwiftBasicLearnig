import Foundation

// User Id
let a = getuid()
print(a)


// 平方根
let funcRoot = sqrt(12.0)
print(funcRoot)


// 自然対数を求める
// Natural Logarithm

var e = 0.0, t = 1.0
for i in 1 ... 10 {
    e += t
    t /= Double(i)

    print(" i=\(i)", terminator:"")
    print(" e=\(e)", terminator:"")
    print(" t=\(t)")
}

print("e=\(e)")
print("t=\(t)")

