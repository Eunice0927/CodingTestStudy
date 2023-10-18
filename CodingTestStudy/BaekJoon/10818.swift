//
//  10818.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 2023/10/18.
//
/* 문제 */
// N개의 정수가 주어진다. 이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.
/* 입력 */
// 첫째 줄에 정수의 개수 N (1 ≤ N ≤ 1,000,000)이 주어진다. 둘째 줄에는 N개의 정수를 공백으로 구분해서 주어진다.
// 모든 정수는 -1,000,000보다 크거나 같고, 1,000,000보다 작거나 같은 정수이다.
/* 출력 */
// 첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.
/* 예제 */
// 5
// 20 10 35 30 7
// -> 7 35

import Foundation

func quiz10818() {
    let _: String = readLine() ?? ""
    let numbers: String = readLine() ?? ""
    let stringArray = numbers.split(separator: " ")
    var numberArray: [Int] = []
    
    for i in 0..<stringArray.count {
        if let number = Int(stringArray[i]) {
            numberArray.append(number)
        }
    }
    
    print(Int(numberArray.min() ?? 0), terminator: " ")
    print(Int(numberArray.max() ?? 0))
}
