//
//  lv0_181950.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/23/23.
//
/* 문제 */
// 문자열 str과 정수 n이 주어집니다.
// str이 n번 반복된 문자열을 만들어 출력하는 코드를 작성해 보세요.
/* 입력 */
// string 5
/* 출력 */
// stringstringstringstringstring

import Foundation

func quiz181950() {
    let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
    let (s1, a) = (inp[0], Int(inp[1])!)
    var result = ""
    
    for _ in 0..<a {
        result += s1
    }
    print(result)
}
