//
//  Operable.swift
//  ADApplication
//
//  Created by Bridget Ulian on 11/10/22.
//

import Foundation
import SwiftUI

struct Operable: View {
    var body: some View {
        VStack {
            Text("Operable")
                .font(.title)
            Text("all features are fully employable by everyone")
            List {
                NavigationLink(destination: TargetSize()){
                    Text("Touch Target Size")
                }
                NavigationLink(destination: TouchscreenGestures(showInfo: false)){
                    Text("Touchscreen Gestures")
                }
                NavigationLink(destination: ButtonPlacement()){
                    Text("Button Placement")
                }
                NavigationLink(destination: ManipulationGestures()) {
                    Text("Device Manipulation Gestures")
                }
            }
            Spacer()

        }
    }
}


//guidelines we can put here
/*
 1. Allows for alternative control input, like a keyboard.
 2. Does not set severe time limits for actions.
 3. Ease of input and screen is readable at a glance.
 4. 
 */
