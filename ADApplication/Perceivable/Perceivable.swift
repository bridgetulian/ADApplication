//
//  Guideline1View.swift
//  ADApplication
//
//  Created by Abby Wright on 11/9/22.
//

import Foundation
import SwiftUI

struct Perceivable: View {
    var body: some View {
        Text("Perceivable")
            .font(.title)
            .navigationBarBackButtonHidden(false)
        Spacer()
        VStack {
            Text("All informative and functional non-text content such as images, icons, charts, image maps etc must have alternative text that describes the meaning or purpose")
        }
            Spacer()
            
        }
    }
