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
            Text("Content is discernible by all users.")
                .multilineTextAlignment(.center)
                .padding()
            VStack {
                List {
                    NavigationLink(destination: ColorContrast()){
                        Text("Color Contrast")
                    }
                    NavigationLink(destination: TextMagnification()){
                        Text("Text Magnification")
                    }
                    NavigationLink(destination: SmallScreen()){
                        Text("Small Screen Size")
                    }
                }
                Spacer()
                
            }
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
