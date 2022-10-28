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

// for driving previews

let examplePalettes = [

    SavedPalette(hue: 0.1)
    ,
    SavedPalette(hue: 0.4)
    ,
    SavedPalette(hue: 0.7)

]
