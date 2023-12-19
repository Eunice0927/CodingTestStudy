//
//  172928.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 12/15/23.
//
/* 제목 */
// 공원 산책
/* 문제 */
//지나다니는 길을 'O', 장애물을 'X'로 나타낸 직사각형 격자 모양의 공원에서 로봇 강아지가 산책을 하려합니다. 
//산책은 로봇 강아지에 미리 입력된 명령에 따라 진행하며, 명령은 다음과 같은 형식으로 주어집니다.
//["방향 거리", "방향 거리" … ]
//예를 들어 "E 5"는 로봇 강아지가 현재 위치에서 동쪽으로 5칸 이동했다는 의미입니다. 로봇 강아지는 명령을 수행하기 전에 다음 두 가지를 먼저 확인합니다.
//주어진 방향으로 이동할 때 공원을 벗어나는지 확인합니다.
//주어진 방향으로 이동 중 장애물을 만나는지 확인합니다.
//위 두 가지중 어느 하나라도 해당된다면, 로봇 강아지는 해당 명령을 무시하고 다음 명령을 수행합니다.
//공원의 가로 길이가 W, 세로 길이가 H라고 할 때, 공원의 좌측 상단의 좌표는 (0, 0), 우측 하단의 좌표는 (H - 1, W - 1) 입니다.
//공원을 나타내는 문자열 배열 park, 로봇 강아지가 수행할 명령이 담긴 문자열 배열 routes가 매개변수로 주어질 때, 
//로봇 강아지가 모든 명령을 수행 후 놓인 위치를 [세로 방향 좌표, 가로 방향 좌표] 순으로 배열에 담아 return 하도록 solution 함수를 완성해주세요.
//S : 시작 지점
//O : 이동 가능한 통로
//X : 장애물
//N : 북쪽으로 주어진 칸만큼 이동합니다.
//S : 남쪽으로 주어진 칸만큼 이동합니다.
//W : 서쪽으로 주어진 칸만큼 이동합니다.
//E : 동쪽으로 주어진 칸만큼 이동합니다.
/* 예제 */
/*
 park = ["SOO","OOO","OOO"]
 routes = ["E 2","S 2","W 1"]
 -> [2,1]
 */
/*
 park = ["SOO","OXX","OOO"]
 routes = ["E 2","S 2","W 1"]
 -> [0,1]
 */
/*
 park = ["OSO","OOO","OXO","OOO"]
 routes = ["E 2","S 3","W 1"]
 -> [0,0]
 */

import Foundation

func quiz172928(_ park:[String], _ routes:[String]) -> [Int] {
    let parkWidth = park[0].count - 1
    let parkHeight = park.count - 1
    var dog = [0, 0]
    var parkMap = Array(repeating: Array(repeating: "", count: parkWidth + 1), count: parkHeight + 1)
    let directions = ["E": 1, "S": 1, "W": -1, "N": -1]
    
    for i in 0..<park.count {
        parkMap[i] = park[i].map { String($0) }
        if let startIndex = parkMap[i].firstIndex(of: "S") {
            dog = [i, startIndex]
        }
    }
//    print(parkMap)
//    print("dog start: \(dog)")
    
    for i in 0..<routes.count {
        let direction: String = routes[i].split(separator: " ").map {String($0)}[0]
        let directionTo: Int = directions[direction]!
        let moves: Int = Int(routes[i].split(separator: " ").map {String($0)}[1])!
        let move = directionTo * moves
        
        switch direction {
        case "E":
            if dog[1] + move <= parkWidth {
                var walk: Int = 0
                for i in 0..<move {
                    if parkMap[dog[0]][dog[1] + i + 1] != "X" {
                        walk += 1
                    } else {
                        walk = 0
                        break
                    }
//                    print("dog moving E \(i)")
                }
                dog[1] = dog[1] + walk
            }
        case "W":
            if dog[1] + move >= 0 {
                var walk: Int = 0
                for i in 0..<abs(move) {
                    if parkMap[dog[0]][dog[1] - i - 1] != "X" {
                        walk += 1
                    } else {
                        walk = 0
                        break
                    }
//                    print("dog moving W \(i)")
                }
                dog[1] = dog[1] - walk
            }
        case "S":
            if dog[0] + move <= parkHeight {
                var walk: Int = 0
                for i in 0..<move {
                    if parkMap[dog[0] + i + 1][dog[1]] != "X" {
                        walk += 1
                    } else {
                        walk = 0
                        break
                    }
//                    print("dog moving S \(i)")
                }
                dog[0] = dog[0] + walk
            }
        case "N":
            if dog[0] + move >= 0 {
                var walk: Int = 0
                for i in 0..<abs(move) {
                    if parkMap[dog[0] - i - 1][dog[1]] != "X" {
                        walk += 1
                    } else {
                        walk = 0
                        break
                    }
//                    print("dog moving N \(i)")
                }
                dog[0] = dog[0] - walk
            }
        default:
            print("Error")
        }
    }
    
    return dog
}
