//
//  Robust.swift
//  ADApplication
//
//  Created by Bridget Ulian on 11/10/22.
//

import Foundation
import SwiftUI

struct Robust: View {
    var body: some View {
        VStack {
            Text("Robust")
                .font(.title)
            Text("Flexible content in relation to interpretation by many user agent").padding([.leading, .bottom, .trailing])
            List {
                NavigationLink(destination: DataEntry()){
                    Text("Provide Appropriate Data Entry Keyboard")
                }
                NavigationLink(destination: EasyData()) {
                    Text("Provide Easy Methods for Data Entry")
                }
                NavigationLink(destination: SupportCharacteristics()) {
                    Text("Support Platform Characteristics")
                }
            }
            Spacer()
        }
    }
}


//guidelines we can put here
/*
 
 */
