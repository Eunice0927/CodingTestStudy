//
//  181940.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/27/23.
//
/* 제목 */
// 문자열 곱하기
/* 문제 */
// 문자열 my_string과 정수 k가 주어질 때, my_string을 k번 반복한 문자열을 return 하는 solution 함수를 작성해 주세요.
/* 입력 */
// "string"
// 3
/* 출력 */
// "stringstringstring"

import Foundation

func quiz181940(_ my_string:String, _ k:Int) -> String {
    var i = 0
    var result = ""
    
    while i < k {
        result += my_string
        i += 1
    }
    
    return result
}
