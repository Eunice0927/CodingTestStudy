//
//  2444.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/16/23.
//
/* 문제 */
// 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
/* 입력 */
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
/* 출력 */
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
/* 예제 */
// 5 ->
/*
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
 */

import Foundation

func quiz2444() {
    var starLines: Int = 0
    
    if let starLineString: String = readLine() {
        if let starLineInt: Int = Int(starLineString) {
            starLines = starLineInt
        }
    }
    
    for i in 1...starLines {
        var result: String = ""
        for _ in 0..<(starLines - i) {
            result += " "
        }
        
        for _ in 0..<i {
            result += "*"
        }

        if i > 1 {
            for _ in 0..<i - 1 {
                result += "*"
            }
        }
        print(result)
    }
    
    for i in 1..<starLines {
        var result = ""
        for _ in 0..<i {
            result += " "
        }
        for _ in 0..<(starLines - i) {
            result += "*"
        }

        if starLines - i > 1 {
            for _ in 0..<(starLines - i - 1) {
                result += "*"
            }
        }
        print(result)
    }
}
