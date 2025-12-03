//
//  main.swift
//  Programmers_42746
//
//  Created by 김우성 on 12/3/25.
//
/// 정렬: 가장 큰 수
/// https://school.programmers.co.kr/learn/courses/30/lessons/42746

import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted = numbers
        .map { String($0) } // String 배열로 변환
        .sorted { $0 + $1 > $1 + $0 } // 앞뒤로 붙인 게 뒤앞으로 붙인 것보다 크도록 정렬
    
    if sorted.first == "0" { // 0끼리 붙은 경우 예외처리
        return "0"
    }
    
    return sorted.joined()
}

print(solution([6, 10, 2]))
print(solution([3, 30, 34, 5, 9]))
