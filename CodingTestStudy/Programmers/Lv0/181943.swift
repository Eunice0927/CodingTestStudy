//
//  181943.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/24/23.
//
/* 제목 */
// 문자열 겹쳐쓰기
/* 문제 */
// 문자열 my_string, overwrite_string과 정수 s가 주어집니다.
//문자열 my_string의 인덱스 s부터 overwrite_string의 길이만큼을
// 문자열 overwrite_string으로 바꾼 문자열을 return 하는 solution 함수를 작성해 주세요.
/* 입력 */
/*
 my_string = "He11oWor1d"
 overwrite_string = "lloWorl"
 s = 2
 */
/* 출력 */
// "HelloWorld"

import Foundation

func quiz181943(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    var resultArray: [String] = []
    var overwriteArray: [String] = []
    let changeLength = overwrite_string.count
    var result = ""
    
    for i in my_string {
        resultArray.append(String(i))
    }
    
    for i in overwrite_string {
        overwriteArray.append(String(i))
    }
    
    for i in 0..<changeLength {
        let index = i + 2
        resultArray[index] = overwriteArray[i]
    }
    
    for i in resultArray {
        result += i
    }
    
    return result
}
