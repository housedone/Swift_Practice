//
//  main.swift
//  Day01_variables_simpleDataTypes_stringInterpolation
//
//  Created by 김우성 on 12/3/25.
//

import Foundation

/* Variables (변수) */

var str = "Hello, Xcode"
print(str)

str = "Goodbye"
print(str)


/* Strings and Integers */

var age = 38
print(age)
//age = "Hello, World!"
// 타입이 지정된 변수를 다른 타입으로 바꿀 수는 없다

var population = 8_000_000
print(population)
population = 1_23_456_7
print(population)
// _는 천단위로 쓰지 않는다고 오류를 발생시키지는 않음. 보기 편하라고 쓰는거


/* Multi-line Strings */

var str1 = """
This goes
over multiple
lines
"""
print(str1)

var str2 = """
This goes \
over multiple \
lines
"""
print(str2)


/* Doubles and booleans */

var pi = 3.141
print(pi)

var awesome = true
print(awesome)


/* String interpolation */

var score = 85
var str3 = "Your score was \(score)"
print(str3)
var results = "The test results are here: \(str3)"
print(results)


/* Constants (상수) */

let taylor = "swift"
print(taylor)

let constant: Int
constant = 10

// 상수로 선언하고 값을 저장한 것은 값을 바꿀 수 없다.
// 변수로 선언했는데 나중에 값을 바꾸지 않는 경우 xcode가 그럴거면 상수를 쓰지 그러냐고 경고하기도 한다.


/* Type annotation (타입 추론) */

let str4 = "Hello, Swift"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
// 보통 선언 시에 값을 입력하여 타입 추론을 하지만, 위와 같이 타입을 명시해서 사용할 수도 있다.


/*
 1. var 로 변수를 만들고 let으로 상수를 만든다. 변함이 없다면 상수를 사용하는 것이 바람직하다.
 2. 문자열은 큰따옴표로 시작하고 끝내며, 여러 줄의 문자열은 큰따옴표 세개로 시작하고 끝내면 된다.
 3. Int는 정수, Double은 실수, Bool은 불리언 (논리형, 참 또는 거짓) 타입이라고 한다.
 4. 문자열 보간 `\()`을 써서 문자열 안에 값을 배치할 수 있다.
 5. Swift는 타입 추론을 사용하여 변수 또는 상수에 타입을 할당하지만, 타입 명시도 가능하다.
 */
