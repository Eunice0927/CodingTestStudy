//
//  11654.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/3/23.
//
/* 문제 */
// 알파벳 소문자, 대문자, 숫자 0-9중 하나가 주어졌을 때, 주어진 글자의 아스키 코드값을 출력하는 프로그램을 작성하시오.

/* 입력 */
// 알파벳 소문자, 대문자, 숫자 0-9 중 하나가 첫째 줄에 주어진다.

/* 출력 */
// 입력으로 주어진 글자의 아스키 코드 값을 출력한다.

/* 예제 */
// A -> 65
// C -> 67
// 0 -> 48

import Foundation

func quiz11654() {
    let inputString: String = readLine()!
    
    print(Int(UnicodeScalar(inputString)!.value))
}
