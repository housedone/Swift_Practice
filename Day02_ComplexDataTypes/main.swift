//
//  main.swift
//  Day02_ComplexDataTypes
//
//  Created by 김우성 on 12/3/25.
//

import Foundation


/* Arrays */

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
print(beatles)
print(beatles[1])
//print(beatles[9]) // 실행되지만 크래시!
let array1: [Int] = [1, 2, 3, 4, 5]
print(array1)


/* Sets */
// 순서가 없이 저장됨, 중복도 무시됨

let colors = Set(["red", "green", "blue"])
print(colors)

let colors2 = Set(["red", "green", "blue", "red", "blue"])
print(colors2)


/* Tuples */
// 여러 값을 하나의 복합 값으로 묶는 "경량 구조체"
// 서로 다른 타입의 값을 하나로 묶을 수 있다.
// 크기가 고정되어 있어 항목을 추가하거나 제거할 수 없음
// 숫자 위치를 사용하거나 이름을 지정해 항목에 액세스 가능
// 존재하지 않는 숫자나 이름을 읽을 수는 없음

var name = (first: "Taylor", last: "Swift")
print(name.0)
print(name.first)

name = (first: "Justin", last: "Bieber")
print(name)

// 불가능한 방법들
//name = (first: "Justin", age: 25)
//name = (first: "Justin", some: "Bieber")
//name = (first: "Justin", last: 123)


/* Array, Set, Tuples */
// 이 컬렉션들은 서로 다른 용도를 가지고 있다.

let address = (house: 555, street: "Taylor Swift Avenue", cith: "Nashville")
// 튜플은 각 항목에 정확한 위치나 이름이 있는 관련 값의 특정 고정 컬렉션이 필요한 경우 사용

let set = Set(["aardvark", "astronaut", "azalea"])
// 세트는 고유한 값들의 모음이 필요하거나, 특정 항목이 거기 있는지 여부를 매우 빠르게 확인할 수 있어야 하는 경우 사용
// 내부적으로 해시 테이블을 사용하기 때문에 탐색이 빠르다

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
// 배열은 중복을 포함할 수 있는 값 모음이 필요하거나, 항목의 순서가 중요한 경우 사용. 가장 일반적임


/* Dictionary */
// 키와 값 쌍의 집합을 만들 때 좋다. 순서가 없이 저장된다.
// Set과 비슷하다고 생각하면 좋다. 대신 key만 고유하고, 값은 중복될 수 있다.

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(heights)
print(heights["Taylor Swift"]) // 그 키에 해당하는 값이 없을 수도 있기 때문에 옵셔널


