//
//  10951.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 2023/10/13.
//

/* 문제 */
// 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
/* 입력 */
// 입력은 여러 개의 테스트 케이스로 이루어져 있다.
// 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)
/* 출력 */
// 각 테스트 케이스마다 A+B를 출력한다.
/* 예제 */
// 1 1 -> 2
// 9 8 -> 17

import Foundation

func quiz10951() {
    let inputString: String = readLine() ?? ""
    let array = inputString.split(separator: " ")
    var answer: Int = 0
    
    for i in 0..<array.count {
        if let number = Int(array[i]) {
            answer = answer + number
        }
    }
    print(answer)
    quiz10951()
}
