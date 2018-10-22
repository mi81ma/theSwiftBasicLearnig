// 日付から曜日を求めるツェラーの公式

func dayOfWeek(_ y:Int, _ m:Int, _ d:Int) -> Int {
    let leep = y + y / 4 - y / 100 + y / 400
    return (leep + (13 * m + 8) / 5 + d) % 7
}

print(dayOfWeek(2018, 10, 21))



// ツェラーの公式(変更後)
func dayOfWeek2(_ y:Int, _ m:Int, _ d:Int) -> Int {
    var y = y, m = m                    // 変数yは仮引数のyとは違う
    if m < 3 {                          // 1, 2月だったら
        m += 12; y -= 1                 // 前年の13月、14月として計算する
    }
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

print(dayOfWeek2(2018, 10, 21))
