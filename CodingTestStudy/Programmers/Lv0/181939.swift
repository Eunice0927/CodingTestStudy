//
//  181939.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/27/23.
//
/* 제목 */
// 더 크게 합치기
/* 문제 */
// 연산 ⊕는 두 정수에 대한 연산으로 두 정수를 붙여서 쓴 값을 반환합니다. 예를 들면 다음과 같습니다.
// 12 ⊕ 3 = 123
// 3 ⊕ 12 = 312
// 양의 정수 a와 b가 주어졌을 때, a ⊕ b와 b ⊕ a 중 더 큰 값을 return 하는 solution 함수를 완성해 주세요.
// 단, a ⊕ b와 b ⊕ a가 같다면 a ⊕ b를 return 합니다.
/* 입력 */
// 9
// 91
/* 출력 */
// 991

import Foundation

func quiz181939(_ a:Int, _ b:Int) -> Int {
    let firstCase: Int = Int(String(a) + String(b)) ?? 0
    let secondCase: Int = Int(String(b) + String(a)) ?? 0
    
    return firstCase >= secondCase ? firstCase : secondCase
}
