//
//  10809.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/7/23.
//
/* 문제 */
// 알파벳 소문자로만 이루어진 단어 S가 주어진다.
// 각각의 알파벳에 대해서, 단어에 포함되어 있는 경우에는 처음 등장하는 위치를, 포함되어 있지 않은 경우에는 -1을 출력하는 프로그램을 작성하시오.
/* 입력 */
// 첫째 줄에 단어 S가 주어진다. 단어의 길이는 100을 넘지 않으며, 알파벳 소문자로만 이루어져 있다.
/* 출력 */
// 각각의 알파벳에 대해서, a가 처음 등장하는 위치, b가 처음 등장하는 위치, ... z가 처음 등장하는 위치를 공백으로 구분해서 출력한다.
// 만약, 어떤 알파벳이 단어에 포함되어 있지 않다면 -1을 출력한다. 단어의 첫 번째 글자는 0번째 위치이고, 두 번째 글자는 1번째 위치이다.
/* 예제 */
// baekjoon
// -> 1 0 -1 -1 2 -1 -1 -1 -1 4 3 -1 -1 7 5 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1

import Foundation

func quiz10809() {
    let inputString = readLine()!.split(separator: "")
    var index: Int = 0
    var alphabets: [String: Int] = ["a": -1, "b": -1, "c": -1, "d": -1, "e": -1, "f": -1, "g": -1, "h": -1, "i": -1,
                                    "j": -1, "k": -1, "l": -1, "m": -1, "n": -1, "o": -1, "p": -1, "q": -1, "r": -1,
                                    "s": -1, "t": -1, "u": -1, "v": -1, "w": -1, "x": -1, "y": -1, "z": -1]
    for i in inputString {
        if alphabets[String(i)] == -1 {        
            alphabets[String(i)] = index
        }
        index += 1
    }
    var sortedAlphabetsValues = alphabets.sorted{ $0.key < $1.key }.map{ $0.value }
    print(sortedAlphabetsValues.map{ String($0) }.joined(separator: " "))
}
