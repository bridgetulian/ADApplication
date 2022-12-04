//
//  ClearElements.swift
//  ADApplication
//
//  Created by Natalie Wright on 11/28/22.
//

import SwiftUI

struct ClearElements: View {
    var body: some View {
        VStack{
            ScrollView {
                Text("Distinguishable Elements")
                    .font(.title)
                    .padding(.top)
                    .navigationBarBackButtonHidden(false)
                Text("Provide clear indication that elements are actionable. This can include using conventional visual indicators, like buttons and arrows, as well as conventional positioning (ex. the back button bring in the upper left corner). Elements should provide visual feedback when possible, such as shading when a button is pressed.").padding(.all)
                GroupBox(label: Text("Adequate Elements")) {
                    HStack{
                        Text("Button: ")
                        Button("Button") {
                        }.buttonStyle(.bordered)
                        Spacer()
                    }
                    HStack{
                        Text("Link button: ")
                        Link(destination: URL(string: "https://www.w3.org/WAI/standards-guidelines/wcag/")!) {
                            Text("WCAG Overview").underline()
                        }
                        Spacer()
                    }
                }.padding([.top, .leading, .trailing])
                GroupBox(label: Text("Inadequate Elements")) {
                    HStack{
                        Text("Button: ")
                        Image(systemName: "square.on.circle")
                        //maybe need a better example for a bad button
                        Spacer()
                    }.padding(.vertical, 9.0)
                    HStack{
                        Text("Link button: ")
                        Link(destination: URL(string: "https://www.w3.org/WAI/standards-guidelines/wcag/")!) {
                            Text("WCAG Overview")
                        }.foregroundColor(Color(UIColor.black))
                        Spacer()
                    }
                }.padding([.top, .leading, .trailing])
                HStack{
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding(.leading)
                        .frame(width: 30.0, height: 30.0)
                    Text("Most app users associate certain icons with different actions. For example, the left pointing arrow is associated with going back a page. When possible, use the commonly associated icons/shapes within your app.").padding(.all).accessibilityLabel("Pencil Image")
                }
                Spacer()
            }
        }
    }
}

