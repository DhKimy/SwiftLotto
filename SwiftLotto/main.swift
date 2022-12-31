//
//  main.swift
//  SwiftLotto
//
//  Created by 김동현 on 2022/12/31.
//

import Foundation

print("금주의 로또 추천번호는...")
for _ in 0 ... 5 {
    print(lottoArray(20000000))
}

func lottoArray(_ loopCount: Int) -> [Int] {
    var answer = [Int](repeating: 0, count: 6)
    var numberCount = [Int](repeating: 0, count: 45)
    for _ in 0 ... loopCount {
        numberCount[Int.random(in: 0 ... 44)] += 1
    }
    for i in 0 ... 5 {
        var maxNumber = numberCount.max()!
        var index = numberCount.firstIndex(of: maxNumber)!
        answer[i] = index + 1
        numberCount[index] = -1
    }
    return answer.sorted()
}
