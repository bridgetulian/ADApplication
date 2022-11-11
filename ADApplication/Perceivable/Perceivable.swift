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
        VStack {
            Text("Perceivable")
                .font(.title)
                .navigationBarBackButtonHidden(false)
            Text("ensures content is discernible by all users")
                .padding(.bottom)
            VStack {
                Text("All informative and functional non-text content such as images, icons, charts, image maps etc must have alternative text that describes the meaning or purpose")
            }
            Spacer()
        }
        }
    }


//guidelines we can put here
/*
 1. minimize amount of information put on each page compared to desktop/laptop versions
 2. reasonable default size for content and touch controls to minimize the need to zoom in and out
 3. position form fields below, not beside, their labels
 4. allow text to be resizable without assistive technology up to 200%
 5. 
 
 */
