// カレンダーを出力する

let days = 31
let firstDay = 3 // 1日目の曜日、0: Sunday

var w = 0

// 月初めの空白
while w < firstDay {
    print("   ", terminator:"")
    w += 1
}

var d = 1
loop: while true {
    while w < 7 {
        let pad = d < 10 ? " " : ""
        print(pad + " \(d)", terminator:"")
        w += 1
        d += 1
        if d > days {
            print()
            break loop
        }
}
print()
w = 0
}
