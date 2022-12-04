//
//  ImportantElements.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/4/22.
//

import SwiftUI

struct ImportantElements: View {
    var body: some View {
        ScrollView {
            
            VStack {
                Text("Important Elements")
                    .font(.title)
                    .padding()
                    .multilineTextAlignment(.center)
                Text("Always place important information before the page scroll. This way users can locate content without performaning an interaction.")
                    .multilineTextAlignment(.center)
                    .padding()
                HStack {
                    Text("Good Example (left)")
                     //   .foregroundColor(.white)
                     //   .background(Color(red: 0, green: 300, blue: 0))
                    Text(" vs. ")
                    Text("Bad Example (right)")
                      //  .foregroundColor(.white)
                      //  .background(Color(red: 88, green: 0, blue: 0))
                }
                HStack {
                    GroupBox {
                        VStack {
                            Text("Python for Beginners")
                                .fontWeight(.bold)
                                .padding([.bottom], 2)
                            Text("This page will walk you through for and while loops in Python.")
                                .font(.system(size: 12))
                            Image("python_image")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .accessibilityLabel("Picture of Python Logo")
                            
                        }
                    }
                    .frame(maxHeight: .infinity)
                    .padding()
                    GroupBox {
                        VStack {
                            Text("Python for Beginners")
                                .fontWeight(.bold)
                            Image("python_image")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .accessibilityLabel("Picture of Python Logo")
                            Text("This module will walk you through for and while loops in Python.")
                                .font(.system(size: 12))
                        }
                    }
                    .frame(maxHeight: .infinity)
                    .padding()
                }
                
            }
        }
    }
}

struct ImportantElements_Previews: PreviewProvider {
    static var previews: some View {
        ImportantElements()
    }
}
