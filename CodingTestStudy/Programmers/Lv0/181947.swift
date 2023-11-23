//
//  lv0_181947.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/23/23.
//
/* 제목 */
// 덧셈식 출력하기
/* 문제 */
// 두 정수 a, b가 주어질 때 다음과 같은 형태의 계산식을 출력하는 코드를 작성해 보세요.
/* 입력 */
// 4 5
/* 출력 */
// 4 + 5 = 9

import Foundation

func quiz181947() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    let (a, b) = (n[0], n[1])

    print("\(a) + \(b) = \(a + b)")
}
