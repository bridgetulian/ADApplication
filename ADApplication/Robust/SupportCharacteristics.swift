//
//  SupportCharacteristics.swift
//  ADApplication
//
//  Created by Abigail Wright on 12/8/22.
//

import SwiftUI

struct SupportCharacteristics: View {
    @State var fontSize1 = 15.0;
    @State var fontSize2 = 15.0;
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Support Built-in Platform Properties")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .navigationBarBackButtonHidden(false)
                Text("Mobile devices provide a variety of built-in features that help users interact with applications. When developing an application, make sure the platform features work in tandem with your app. For example, most platforms will increase the size of text on external applications for ease of viewing. Make sure this text-increase feature works for all text in your application.")
                    .padding()
                Text("Change the font of the texts below to see how wrapping text allows for platform text magnification.")
                    .font(.callout)
                GroupBox(label: Text("Supports text wrapping with magnification")) {
                    Stepper(value: $fontSize1, in: 15...50) {
                        Text("Font size: \(Int(fontSize1))")
                    }
                    Text("This text supports magnification by wrapping.").font(.system(size: fontSize1))
                }.padding(.all)
                GroupBox(label: Text("Does not support text wrapping with magnification")) {
                    Stepper(value: $fontSize2, in: 15...50) {
                        Text("Font size: \(Int(fontSize2))")
                    }
                    Text("This text does not support magnification by not wrapping.").font(.system(size: fontSize2)).multilineTextAlignment(.leading).lineLimit(2)
                }.padding(.all)
                Spacer()
            }
        }
    }
}

struct SupportCharacteristics_Previews: PreviewProvider {
    static var previews: some View {
        SupportCharacteristics()
    }
}
