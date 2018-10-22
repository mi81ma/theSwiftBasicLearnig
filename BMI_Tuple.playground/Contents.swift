// BMI with tuple Function

func BMI(tall:Double, weight:Double) -> (Double, Double) {
    let ideal = 22.0
    let t2 = tall * tall / 10000.0
    let index = weight / t2      // BMI Calcuration
    return (index, ideal * t2)   // Ideal Weight
}


let result = BMI(tall: 177.0, weight: 80.0)
print(result) // (25.5354, 68.9238)を出力
