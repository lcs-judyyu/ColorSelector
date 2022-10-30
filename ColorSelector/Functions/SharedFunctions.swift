//
//  SharedFunctions.swift
//  ColorSelector
//
//  Created by Judy YU on 2022-10-30.
//

import Foundation

// MARK: Functions
// Return a list of palette that have been filtered by the hue, selected using the slider +/- 10
func filtered(by hue: Double, from list: [SavedPalette], selectionActive: Bool) -> [SavedPalette] {
    
    // Don't filter when a selction is not made
    if selectionActive == false {
        // Return entire list
        return list
    } else {
        
        // Debug message
        print("hue is: \(hue)")
        print(list)
        
        // Build the range of hue +/- 10
        let hueRange = (hue - 10.0/360.0)...(hue + 10.0/360.0)
        print("The filter range is \(hueRange)")
        
        // We can use the "filter" method in Swift, but to satisfy AP Create Task requirements
        // Implement a linear search for explanation in the written response
        
        // Create an empty list
        var filteredResults: [SavedPalette] = []
        
        // Iterate over the saved palettes and find those inside the range
        for palette in list {
            // Look for a palette in the derised range
            if hueRange.contains(palette.hue) {
                filteredResults.append(palette)
            }
        }
        
        // Returned filtered list
        return filteredResults
        
    }
    
}
