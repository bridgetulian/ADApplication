//
//  Gesture.swift
//  ADApplication
//
//  Created by Abby Wright on 12/2/22.
//

import SwiftUI

struct Gesture: View {
        
    @State var added: Bool
    @State var buttoncolor = Color("Menu Color")
    
    var body: some View {
        VStack{
            Text("Provide Instructions for Custom Gestures")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 2.0)
                .navigationBarBackButtonHidden(false)
            Text("Most mobile application users are accustomed to a specific set of touchscreen gestures, such as swiping or tapping. If you chose to use custom touchscreen gestures, such as tapping multiple times, provide clear instructions to users. These instructions should be visible and intuitive for the user.").padding(.all)
            GroupBox(label: Text("Custom Gesture Example")) {
                Text("If users are expected to tap three times on the circle, provide instructions near the element.").padding(.top)
                HStack{
                    Image(systemName: "plus.circle")
                        .frame(width: 30.0, height: 30.0)
                        .foregroundColor(buttoncolor)
                        .onTapGesture(count: 3) {
                            added.toggle()
                                }
                    .alert("Successful!", isPresented: $added) {
                                Button("OK", role: .cancel) { }
                            }
                    Text("Tap three times to show alert")
                   
                }
            }.padding(.horizontal)
            HStack{
                Image(systemName: "pencil.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color("Menu Color"))
                    .padding(.leading)
                    .frame(width: 30.0, height: 30.0)
                    
                Text("When possible, use touchscreen gestures that are common on other apps. Similarly, users are accustomed to gestures accompanying the same action, such as a pinching gesture zooming in on the element.").padding(.all)
            }
            Spacer()
            
        }
    }
}
