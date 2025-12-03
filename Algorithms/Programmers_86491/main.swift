//
//  main.swift
//  Programmers_86491
//
//  Created by 김우성 on 12/3/25.
//

/// 완전탐색: 최소직사각형
/// https://school.programmers.co.kr/learn/courses/30/lessons/86491

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var biggestWallet = [0, 0]
    
    for component in sizes {
        var forCompare = [0, 0]
        
        // 배열의 0번째를 가로, 1번째를 세로로 놓고 풀자
        if component[0] >= component[1] {
            forCompare[0] = component[0]
            forCompare[1] = component[1]
        } else {
            forCompare[0] = component[1]
            forCompare[1] = component[0]
        }
        
        for i in (0...1) {
            if forCompare[i] > biggestWallet[i] {
                biggestWallet[i] = forCompare[i]
            }
        }
    }
    
    return biggestWallet[0] * biggestWallet[1]
}

func solution2(_ sizes:[[Int]]) -> Int {
    var biggestWallet = [0, 0]
    
    for component in sizes {
        var forCompare = [0, 0]
        
        forCompare[0] = max(component[0], component[1])
        forCompare[1] = min(component[0], component[1])
        
        for i in (0...1) {
            if forCompare[i] > biggestWallet[i] {
                biggestWallet[i] = forCompare[i]
            }
        }
    }
    
    return biggestWallet[0] * biggestWallet[1]
}

func solution3(_ sizes:[[Int]]) -> Int {
    var maxSize: (width: Int, height: Int) = (.min, .min)
    for size in sizes {
        maxSize.width = max(max(size[0], size[1]), maxSize.width)
        maxSize.height = max(min(size[0], size[1]), maxSize.height)
    }
    return maxSize.width * maxSize.height
}

print(solution3([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution3([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
print(solution3([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))
