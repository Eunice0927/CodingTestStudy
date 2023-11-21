//
//  1157.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/21/23.
//
/* 문제 */
// 알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오. 
// 단, 대문자와 소문자를 구분하지 않는다.
/* 입력 */
// 첫째 줄에 알파벳 대소문자로 이루어진 단어가 주어진다. 주어지는 단어의 길이는 1,000,000을 넘지 않는다.
/* 출력 */
// 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.
/* 예제 */
// Mississipi -> ?
// zZa -> Z
// baaa -> A

import Foundation

func quiz1157() {
    let word = readLine()!.uppercased()
    var letters: [Character] = []
    var counts: [Int] = []
    var maxNumber = 0
    var finalLetter = ""

    for i in word {
        if !letters.contains(i) {
            letters.append(i)
        }
    } //letters: 알파벳 중복 없는 배열
    
    counts = Array(repeating: 0, count: letters.count)
    
    for i in word {
        for k in 0..<letters.count {
            if i == letters[k] {
                counts[k] += 1
            }
        }
    }
    
    for i in 0..<counts.count {
        if counts[i] > maxNumber {
            maxNumber = counts[i]
            finalLetter = String(letters[i])
        } else if counts[i] == maxNumber {
            finalLetter = "?"
        }
    }
    
    print(finalLetter)
}
