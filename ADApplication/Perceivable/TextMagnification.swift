//
//  TextMagnification.swift
//  ADApplication
//
//  Created by Abigail Wright on 11/14/22.
//

import SwiftUI

struct TextMagnification: View {
    @State var fontSize = 15.0;
    @Environment(\.sizeCategory) var sizeCategory


    var size = ".medium"
    var body: some View {
        ScrollView {
            VStack{
                Text("Text Magnification")
                    .font(.title)
                    .padding(.top)
                    .navigationBarBackButtonHidden(false)
                Text("Text must be resizable to up to 200%, according to the WCAG 2.0 Guidelines.").padding(.all)
                HStack{
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding(.leading)
                        .frame(width: 30.0, height: 30.0)
                    
                    Text("For iOS apps, Apple has provided automatically resizable text through Dynamic Text. Another approach would be to provide on-page controls that change the font size.").padding(.all)
                }
                
                GroupBox() {
                    Stepper(value: $fontSize, in: 15...50) {
                        Text("Font size: \(Int(fontSize))")
                    }
                    Text("This text can change font sizes.").font(.system(size: fontSize))
                }.padding(.all)
                
                Spacer()
            }
        }
    }
}

struct TextMagnification_Previews: PreviewProvider {
    static var previews: some View {
        TextMagnification()
    }
}
