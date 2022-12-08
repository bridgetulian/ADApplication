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
                    Text("Positioning Important Elements")
                        .font(.title)
                        .padding()
                        .multilineTextAlignment(.center)
                HStack{
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding([.leading],35)
                        .frame(width: 35.0, height: 35.0)
                    Text("Always place important information before the page scroll. This way users can locate content without performaning an interaction.")
                        .padding([.top,.bottom,.trailing,.leading],20)
                }
                    Text("**Good Example**")
                    
                    .padding([.top],5)
                    VStack { //maybe do VStack for this?
                        GroupBox {
                            ScrollView{
                                VStack {
                                    Text("Python for Beginners")
                                        .fontWeight(.bold)
                                        .padding([.bottom], 2)
                                    Text("This page will walk you through for and while loops in Python.")
                                        .font(.system(size: 16))
                                    Image("python_image")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFit()
                                        .accessibilityLabel("Picture of Python Logo")
                                    
                                }
                            }.frame(height: 180.0)
                        }
                        
                        .padding([.horizontal,.bottom], 10.0)
                        
                        Text("**Bad Example**")
                        GroupBox {
                            ScrollView {
                                VStack {
                                    Text("Python for Beginners")
                                        .fontWeight(.bold)
                                    Image("python_image")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .scaledToFit()
                                        .accessibilityLabel("Picture of Python Logo")
                                    Text("This module will walk you through for and while loops in Python.")
                                        .font(.system(size: 16))
                                }
                            }
                            .frame(height: 180.0)
                        }.padding(.horizontal, 10.0)
                    }

    Spacer()
            }
        }
    }
}

struct ImportantElements_Previews: PreviewProvider {
    static var previews: some View {
        ImportantElements()
    }
}
