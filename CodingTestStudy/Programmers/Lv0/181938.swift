//
//  181938.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/27/23.
//
/* 제목 */
// 두 수의 연산값 비교하기
/* 문제 */
// 연산 ⊕는 두 정수에 대한 연산으로 두 정수를 붙여서 쓴 값을 반환합니다. 예를 들면 다음과 같습니다.
// 12 ⊕ 3 = 123
// 3 ⊕ 12 = 312
// 양의 정수 a와 b가 주어졌을 때, a ⊕ b와 2 * a * b 중 더 큰 값을 return하는 solution 함수를 완성해 주세요.
// 단, a ⊕ b와 2 * a * b가 같으면 a ⊕ b를 return 합니다.
/* 예제 */
/*
 2
 91
 -> 364
 */
/*
 91
 2
 -> 912
 */

import Foundation

func quiz181938(_ a:Int, _ b:Int) -> Int {
    let firstCase: Int = Int(String(a) + String(b)) ?? 0
    let secondCase: Int = 2 * a * b
    
    return firstCase >= secondCase ? firstCase : secondCase
}
