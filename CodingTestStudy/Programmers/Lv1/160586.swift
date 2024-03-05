//
//  160586.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 3/4/24.
//
/* 제목 */
//대충 만든 자판
/* 문제 */
//휴대폰의 자판은 컴퓨터 키보드 자판과는 다르게 하나의 키에 여러 개의 문자가 할당될 수 있습니다. 
//키 하나에 여러 문자가 할당된 경우, 동일한 키를 연속해서 빠르게 누르면 할당된 순서대로 문자가 바뀝니다.
//예를 들어, 1번 키에 "A", "B", "C" 순서대로 문자가 할당되어 있다면 1번 키를 한 번 누르면 "A", 두 번 누르면 "B", 세 번 누르면 "C"가 되는 식입니다.
//같은 규칙을 적용해 아무렇게나 만든 휴대폰 자판이 있습니다. 
//이 휴대폰 자판은 키의 개수가 1개부터 최대 100개까지 있을 수 있으며, 특정 키를 눌렀을 때 입력되는 문자들도 무작위로 배열되어 있습니다.
//또, 같은 문자가 자판 전체에 여러 번 할당된 경우도 있고, 키 하나에 같은 문자가 여러 번 할당된 경우도 있습니다.
//심지어 아예 할당되지 않은 경우도 있습니다. 따라서 몇몇 문자열은 작성할 수 없을 수도 있습니다.
//이 휴대폰 자판을 이용해 특정 문자열을 작성할 때, 키를 최소 몇 번 눌러야 그 문자열을 작성할 수 있는지 알아보고자 합니다.
//1번 키부터 차례대로 할당된 문자들이 순서대로 담긴 문자열배열 keymap과 입력하려는 문자열들이 담긴 문자열 배열 targets가 주어질 때, 
//각 문자열을 작성하기 위해 키를 최소 몇 번씩 눌러야 하는지 순서대로 배열에 담아 return 하는 solution 함수를 완성해 주세요.
//단, 목표 문자열을 작성할 수 없을 때는 -1을 저장합니다.
/* 예제 */
/*
 keymap = ["ABACD", "BCEFD"]
 targets = ["ABCD","AABB"]
 result = [9, 4]
 */
/*
 keymap = ["AA"]
 targets = ["B"]
 result = [-1]
 */
/*
 keymap = ["AGZ", "BSSS"]
 targets = ["ASA","BGZ"]
 result = [4, 6]
 */

import Foundation

func quiz160586(_ keymap:[String], _ targets:[String]) -> [Int] {
    let splitKeymaps = keymap.map { keys in
        keys.map { $0 }
    }
    
    let splitTargets = targets.map { targets in
        targets.map { $0 }
    }
    
    var resultArray = Array(repeating: 0, count: targets.count)
    
    for targets in splitTargets.enumerated() {
        var indexes = Array(repeating: 0, count: targets.element.count)
        var position = 0
    
        for target in targets.element {
            var index = 0
    //            print("Target: \(target)")
            for key in splitKeymaps {
    //                print("Key: \(key)")
                if let newIndex: Int = key.firstIndex(of: target) {
                    if index == 0 || newIndex <= index {
                        index = newIndex + 1
                    }
    //                    print("index: \(index), newIndex:\(newIndex)")
    //                } else {
    //                    print("No result of \(target) in \(key)")
                }
            }
    
            indexes[position] = index
    //            print("Indexes: \(indexes)")
            position += 1
    //            print("---------------------------------------------------")
        }
    
        if let _ = indexes.firstIndex(of: 0) {
            resultArray[targets.offset] = -1
        } else {
            resultArray[targets.offset] = indexes.reduce(0) { $0 + $1 }
        }
    }
    
    print("===================================================")
    return resultArray
}
