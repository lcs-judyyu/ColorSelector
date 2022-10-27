//
//  SavedPalettes.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-27.
//

import Foundation

struct SavedPalette: Identifiable {
    let id = UUID() // Universally unique identifier
    let hue: Double
}
