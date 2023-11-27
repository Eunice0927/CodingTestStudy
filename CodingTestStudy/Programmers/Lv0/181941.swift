//
//  181941.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/27/23.
//
/* 제목 */
// 문자 리스트를 문자열로 변환하기
/* 문제 */
// 문자들이 담겨있는 배열 arr가 주어집니다. arr의 원소들을 순서대로 이어 붙인 문자열을 return 하는 solution함수를 작성해 주세요.
/* 입력 */
// ["a","b","c"]
/* 출력 */
// "abc"

import Foundation

func quiz181941(_ arr:[String]) -> String {
    var result = ""
    
    for i in 0..<arr.count {
        result += arr[i]
    }
    
    return result
}
