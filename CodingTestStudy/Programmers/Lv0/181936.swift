//
//  181936.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/29/23.
//
/* 제목 */
// 공배수
/* 문제 */
// 정수 number와 n, m이 주어집니다. number가 n의 배수이면서 m의 배수이면 1을 아니라면 0을 return하도록 solution 함수를 완성해주세요.
/* 예제 */
/*
 60
 2
 3
 -> 1
 */
/*
 55
 10
 5
 -> 0
 */

import Foundation

func quiz181936(_ number:Int, _ n:Int, _ m:Int) -> Int {
    return number % n == 0 && number % m == 0 ? 1 : 0
}
