//
//  181937.swift
//  CodingTestStudy
//
//  Created by Eunsu JEONG on 11/28/23.
//
/* 제목 */
// n의 배수
/* 문제 */
// 정수 num과 n이 매개 변수로 주어질 때, num이 n의 배수이면 1을 return n의 배수가 아니라면 0을 return하도록 solution 함수를 완성해주세요.
/* 예제 */
/*
 98
 2
 -> 1
 */
/*
 34
 3
 -> 0
 */

import Foundation

func quiz181937(_ num:Int, _ n:Int) -> Int {
    return num % n == 0 ? 1 : 0
}
