
// うるう年
// 4で割り切れ、かつ100で割り切れないか400で割り切れる年


let inputYear = readLine()!
let year = Int(inputYear)!
leap: if year % 4 == 0 {
    if year % 100 == 0 {
        if year % 400 == 0 {
            print("\(year)年は400で割り切れるのでうるう年です。")
            break leap
        }
        print("\(year)年は100で割り切れるのでうるう年ではありません。")
    }
    print("\(year)年は4で割り切れないのでうるう年ではありません。")
}
