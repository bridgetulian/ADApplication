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
    @State var sliderVal = 0.0


    var body: some View{
        ScrollView{
            VStack {
                Text("Simple Touchscreen Gestures")
                    .font(.title)
                Text("Touchscreen gestures should be simple, so that users with screen readers only deal with a two-step process: focus by screen reader, gesture by user. To reach the AAA WCAG level, touchscreen gestures should also have instructions so users know clearly how to access information.")
                    .multilineTextAlignment(.center)
                    .padding()
                
               
                
                HStack{
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding(.leading)
                        .frame(width: 30.0, height: 30.0)
                    
                    Text("Mobile applications provide more variety for touchscreen gestures. When possible, provide an alternate way of gesturing if the primary way is more complex.")
                        .padding()
                }
                
                GroupBox() {
                    Slider(
                        value: $sliderVal,
                        in: 0...5,
                        step: 1)
                    Stepper(value: $sliderVal, in: 0...5) {
                        Text("Value: \(Int(sliderVal))")
                    }
                }.padding([.top, .leading, .trailing])
                
                Text("Click this button to view more information about Touchscreen gestures and why they are important.")
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
}
