//
//  11720.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/6/23.
//
/* 문제 */
// N개의 숫자가 공백 없이 쓰여있다. 이 숫자를 모두 합해서 출력하는 프로그램을 작성하시오.
/* 입력 */
// 첫째 줄에 숫자의 개수 N (1 ≤ N ≤ 100)이 주어진다. 둘째 줄에 숫자 N개가 공백없이 주어진다.
/* 출력 */
// 입력으로 주어진 숫자 N개의 합을 출력한다.
/* 예제 */
/*
 1
 1
 -> 1
 1
 54321
 -> 15
 11
 10987654321
 -> 46
 */

import Foundation

func quiz11720() {
    let _: Int = Int(readLine()!)!
    let numbers = readLine()!
    var sum: Int = 0
    
    for i in numbers {
        let number: Int = Int(String(i))!
        sum += number
    }
    print(sum)
}
