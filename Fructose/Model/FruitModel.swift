//
//  FruitModel.swift
//  Fructose
//
//  Created by Pradyumn Shukla on 23/09/20.
//

import SwiftUI
// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}