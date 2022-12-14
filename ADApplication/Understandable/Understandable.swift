//
//  Understandable.swift
//  ADApplication
//
//  Created by Bridget Ulian on 11/10/22.
//

import Foundation
import SwiftUI

struct Understandable: View {
    var body: some View {
        VStack {
            Text("Understandable")
                .font(.title)
            Text("User can comprehend meaning of presented information.")
                .multilineTextAlignment(.center)
                .padding()
            List {
                NavigationLink(destination: ClearElements()){
                    Text("Provide Distinguishing Features for Actionable Elements")
                }

                NavigationLink(destination: Gesture(added: false)){
                    Text("Provide Instructions for Custom Gestures")
                }

                NavigationLink(destination: ImportantElements()) {
                    Text("Positioning Important Elements Before Scroll")
                }
                NavigationLink(destination: GroupElements()) {
                    Text("Group Operable Elements Together")
                }
                NavigationLink(destination: ChangingScreen()) {
                    Text("Changing Screen Orientation")
                 }
                NavigationLink(destination: ConsistentLayout()) {
                    Text("Provide a Consistent Layout")
                }
            }
            Spacer()
        }
    }
}


//guidelines we can put here
/*
 1. Colors make content clear for all people. Use contrasting colors and have information in another way than color.
 2.
 
 */
