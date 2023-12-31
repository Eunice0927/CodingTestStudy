//
//  11382.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 2023/10/11.
//

/* 문제 */
// 꼬마 정민이는 이제 A + B 정도는 쉽게 계산할 수 있다. 이제 A + B + C를 계산할 차례이다!
/* 입력 */
// 첫 번째 줄에 A, B, C (1 ≤ A, B, C ≤ 1012)이 공백을 사이에 두고 주어진다.
/* 출력 */
// A+B+C의 값을 출력한다.
/* 예제 */
// 77 77 7777 -> 7931

import Foundation

func quiz11382() {
    print("입력:", terminator: " ")
    var answer: Int = 0

    let inputValue: String = readLine() ?? ""
    let array = inputValue.components(separatedBy: " ")

    for i in 0..<array.count {
        if let number = Int(array[i]) {
            answer = answer + number
        }else {
            print("입력 값이 잘못되었습니다. 숫자만 입력 해 주세요.")
            answer = answer + 0
        }
    }
    print(answer)
}
