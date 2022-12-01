//
//  SmallScreen.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/1/22.
//

import Foundation
import SwiftUI

struct SmallScreen: View {
    var body: some View {
        VStack {
            Text("Small Screen Size")
                .font(.title)
                .padding(.top)
                .navigationBarBackButtonHidden(false)
            Text("Mobile Applications should conform to a smaller screen size. The same information on a website or web application should be adapted for a smaller screen.")
                .padding()
            Spacer()
        }
    }
}
