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
// 아! 튜플은 컬렉션은 아니다! 컬렉션 프로토콜을 따르지 않는 Swift의 정적 타입 중 하나다.
// 오히려 String이 컬렉션이라는 거...

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

var dict1: [String: Double]
var dict2: [String: String]


/* 사전의 기본값 */
// 존재하지 않는 키를 사용해 Dictionary의 값을 읽으려고 하면, nil이 나온다.
// 이를 위한 대안으로, 사전에 기본값을 제공할 수 있다.

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla",
    "John": nil
]
print(favoriteIceCream["Paul"])
print(favoriteIceCream["Charlotte"])
print(favoriteIceCream["Charlotte", default: "Unknown"]) // 기본값 설정
print(favoriteIceCream["John"])
// 얘들은 왜 옵셔널이 달려 나오는가? favoriteIceCream이라는 사전 상수의 타입이 "John": nil이라는 키와 값도 가졌기 때문에 [String: String?] 으로 추론되었기 때문이다! 이거 디테일한 부분
// 타입이 그냥 [String: String]이었다면 옵셔널 안달려나온다.


/* Creating Empty Collections */
// 선언하면서 값을 집어넣어 자동 추론해서 컬렉션을 만들지 않고, 그냥 컬렉션의 타입을 지정해 만드는 방법을 알아보자.
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results1 = Array<Int>()


/* Enumerations (enums) */
// 어떠한 관련된 값 그룹을 사용하기 쉽게 만들고자 정의하는 방법이다. 예를 들어 보자.

let result = "failure"
let result2 = "failed"
let result3 = "fail"
// 이 세 가지는 같은 뜻을 가지고 있지만 모두 다른 문자열이기 때문에 다른 것을 의미한다.
// 만약 아래와 같이 enum을 정의해 다루면, 실수로 다른 문자열을 사용하지 않을 수 있다.

enum Result {
    case success
    case failure
}

let result4 = Result.failure


/* Enum associated Values */
// 간단한 값 저장 외에도 각 케이스에 첨부된 연관된 값도 저장할 수 있다.
// 이를 통해 열거형에 추가 정보를 첨부해 더 미묘한 데이터를 나타낼 수 있다.

enum Activity {
    case bored
    case running
    case talking
    case singing
}

// 위의 일반적인 열거형의 경우, 어디를 향해 달린다거나, 어떤 주제에 대해 말한다거나, 얼마나 크게 노래한다거나를 우리는 알 수 없지만, 아래와 같이 정의하는 경우 가능하다.

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity2.talking(topic: "football")


/* Enum Raw Values */
// 때로는 열거형에 값을 할당할 수도 있어야 한다.
// 이를 통해 동적으로 생성하고, 다양한 방식으로 사용할 수 있다.

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

// 이렇게 생성한 경우, earth에는 숫자 2가 주어질 것이므로 아래와 같이 쓸 수 있다. (그냥 예시다. Planet(earth)로 해도 똑같다)
let earth = Planet(rawValue: 2)

// 하나 이상의 케이스에 특정 값을 할당할 수 도 있고, Swift가 나머지를 생성한다. 위의 경우는 '자연스럽'지 않으므로, 아래와 같이 열거형을 생성할 수도 있다.

enum Planet2: Int {
    case mercury = 1
    case venus, earth, mars
}

// 이제 earth는 3번째이다.

enum Planet3: Int {
    case mercury = 1
    case venus
    case earth = 4
    case mars
}

print(Planet3.venus.rawValue)
print(Planet3.mars.rawValue) // earth 때문에 5가 나온다.
print(Planet3(rawValue: 3)) // 얘는 nil이 나온다.


/*
 1. 배열, 셋, 튜플, 사전을 사용해 단일 값 아래에 항목의 그룹을 저장할 수 있다. 모두 어떤 자료형을 필요로 하는지에 따라 사용법이 다르다. (튜플은 컬렉션 타입은 아니다)
 2. 배열은 항목을 추가하는 순서대로 저장하며, 숫자 위치를 사용해 접근할 수 있다.
 3. 셋은 항목을 순서 없이 저장하므로, '몇 번째 항목'으로 접근하는 것은 불가능하다.
 4. 튜플은 고정된 사이즈이며, 각 항목에 이름을 붙일 수 있다. '몇 번째 항목'으로 접근도 가능하고, 이름으로도 접근할 수 있다.
 5. 사전은 키와 값으로 항목을 저장하며, 키로 값을 읽어올 수 있다. 키는 중복이 불가능하고, 값은 중복 가능하다.
 6. 열거형은 관련된 값들을 묶는 방법으로, 이를 사용 시 철자를 틀릴 걱정이 없게 된다.
 7. 열거형에 raw value를 붙일 수 있고, 각 케이스마다 추가적인 정보를 담도록 관련 값을 추가하게 할 수도 있다.
 */
