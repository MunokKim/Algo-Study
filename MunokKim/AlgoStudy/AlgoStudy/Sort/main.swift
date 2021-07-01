//
//  main.swift
//  AlgoStudy
//
//  Created by 김문옥 on 2021/06/27.
//

// https://www.acmicpc.net/problem/10989
// Baekjoon 10989번 수 정렬하기 3

let fileIO: FileIO = FileIO()
let numberOfNumber: Int = fileIO.readInt()
var accumulator: [Int] = Array(repeating: 0, count: 10001)
var output: String = String()

for _ in 0..<numberOfNumber {
    let input: Int = fileIO.readInt()
    accumulator[input] += 1
}

for (index, accumulatedCount) in accumulator.enumerated() {
    output += String(repeating: "\(index)\n", count: accumulatedCount)
}

print(output)

