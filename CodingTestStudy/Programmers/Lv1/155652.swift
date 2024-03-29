//
//  155652.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 3/25/24.
//
/* 제목 */
//둘만의 암호
/* 문제 */
//두 문자열 s와 skip, 그리고 자연수 index가 주어질 때, 다음 규칙에 따라 문자열을 만들려 합니다. 암호의 규칙은 다음과 같습니다.
//문자열 s의 각 알파벳을 index만큼 뒤의 알파벳으로 바꿔줍니다.
//index만큼의 뒤의 알파벳이 z를 넘어갈 경우 다시 a로 돌아갑니다.
//skip에 있는 알파벳은 제외하고 건너뜁니다.
//예를 들어 s = "aukks", skip = "wbqd", index = 5일 때, 
//a에서 5만큼 뒤에 있는 알파벳은 f지만 [b, c, d, e, f]에서 'b'와 'd'는 skip에 포함되므로 세지 않습니다.
//따라서 'b', 'd'를 제외하고 'a'에서 5만큼 뒤에 있는 알파벳은 [c, e, f, g, h] 순서에 의해 'h'가 됩니다.
//나머지 "ukks" 또한 위 규칙대로 바꾸면 "appy"가 되며 결과는 "happy"가 됩니다.
//두 문자열 s와 skip, 그리고 자연수 index가 매개변수로 주어질 때 위 규칙대로 s를 변환한 결과를 return하도록 solution 함수를 완성해주세요.
/* 예제 */
/*
 s = "aukks"
 skip = "wbqd"
 index = 5
 -> "happy"
 */

import Foundation

func quiz155652(_ s:String, _ skip:String, _ index:Int) -> String {
    var alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
                     "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var result: [String] = []
    let skips = skip.map { String($0) }
    let letters = s.map { String($0) }
    
    skips.forEach { skip in
        guard let skip = alphabets.firstIndex(of: skip) else { return }
        alphabets.remove(at: skip)
    }
    
    let endIndex = alphabets.count - 1
    
    letters.forEach { letter in
        guard let letterIndex = alphabets.firstIndex(of: letter) else { return }
        var letterWithIndex = letterIndex + index
        
        while letterWithIndex > endIndex {
            letterWithIndex = letterWithIndex - endIndex - 1
        }
        
        result.append(alphabets[letterWithIndex])
    }
    
    let resultString = String(result.map { Character($0) })
    
    return resultString
}
