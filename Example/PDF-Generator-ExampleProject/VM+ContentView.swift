//
//  VM+ContentView.swift
//  PDF-Generator-ExampleProject
//
//  Created by Nazar Velkakayev on 27.07.2024.
//

import Foundation
import SwiftUI

class VM_ContentView: ObservableObject {
    func randomColor() -> Color {
        let randomRed = Double.random(in: 0...1)
        let randomGreen = Double.random(in: 0...1)
        let randomBlue = Double.random(in: 0...1)
        return Color(red: randomRed, green: randomGreen, blue: randomBlue)
    }
    
    var columns: [GridItem] = [GridItem(.fixed(100)), 
                               GridItem(.fixed(100)),
                               GridItem(.fixed(100))]
    
    
    var gridItems: [Int] = Array(1..<50)
    
}
