/*
 Fibonacci Numbers
*/

var fibol = 0, fibo2 = 1
print(fibol, terminator:" ")
for _ in 0 ..< 50 {
    (fibol, fibo2) = (fibo2, fibol + fibo2)  // 新しい項を計算し、値を入れ替え
    print(fibol, terminator:" ")
}
print()

