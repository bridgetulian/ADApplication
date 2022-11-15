//
//  EasyButtonAccess.swift
//  ADApplication
//
//  Created by Bridget Ulian on 11/15/22.
//

import Foundation
import SwiftUI

struct TouchscreenGestures: View {
    
    @State var showInfo: Bool

    var body: some View{
                
        VStack {
            Text("Simple Touchscreen Gestures")
                .font(.title)
            Text("Touchscreen gestures should be simple, so that users with screen readers only deal with a two-step process: focus by screen reader, gesture by user. To reach the AAA WCAG level, touchscreen gestures should also have instructions so users know clearly how to access information.")
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Click this button to view more information about Touchscreen gestures and why they are important.")
                .padding()
            Button("Information") {
                showInfo.toggle()
            }
            .padding()
            if showInfo {
                VStack {
                    Text("User input forms should always have a way for a user to seek assistance on what questions are asking for and how to fill them out.")
                }
            }
            Spacer()
                    
        }
    }
}
