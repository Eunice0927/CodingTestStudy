//
//  181942.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/27/23.
//
/* 제목 */
// 문자열 섞기
/* 문제 */
// 길이가 같은 두 문자열 str1과 str2가 주어집니다.
// 두 문자열의 각 문자가 앞에서부터 서로 번갈아가면서 한 번씩 등장하는 문자열을 만들어 return 하는 solution 함수를 완성해 주세요.
/* 입력 */
// "aaaaa"
// "bbbbb"
/* 출력 */
// "ababababab"

import Foundation

func quiz181942(_ str1:String, _ str2:String) -> String {
    var firstArrary = [String]()
    var secondArrary = [String]()
    var result = ""
    
    for i in str1 {
        firstArrary.append(String(i))
    }
    
    for i in str2 {
        secondArrary.append(String(i))
    }
    
    for i in 0..<str1.count {
        result += firstArrary[i] + secondArrary[i]
    }
    
    return result
}
