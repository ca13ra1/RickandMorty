//
//  RickandMorty.swift
//  RickandMorty
//
//  Created by cole cabral on 2021-09-07.
//

import Foundation

struct RickandMorty: Codable {
    let info: Info
    let results: [Result]
}

struct Info: Codable {
    let count, pages: Int
    let next: String?
    let prev: String?
}

struct Result: Codable {
    let id: Int
    let name: String
    let status: String
    let image: String
}
