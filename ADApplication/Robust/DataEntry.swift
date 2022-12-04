//
//  DataEntry.swift
//  ADApplication
//
//  Created by Natalie Wright on 11/29/22.
//

import SwiftUI

struct DataEntry: View {
    @State var text : String = ""
    var body: some View {
        VStack{
            Text("Provide Appropriate Keyboard for Data Entry")
                .font(.title)
                .padding(.top)
                .navigationBarBackButtonHidden(false)
            Text("When possible, provide the appropriate keyboard for data entry. For example, if a user is asked to enter a number, provide a ").padding(.all)
            GroupBox(label: Text("Adequate Data Entry")) {
                TextField("Number Entry", text: self.$text).keyboardType(UIKeyboardType.numberPad)
                TextField("Email Entry", text: $text).keyboardType(UIKeyboardType.emailAddress)
            }.padding([.top, .leading, .trailing])
            GroupBox(label: Text("Inadequate Data Entry")) {
                TextField("Number Entry", text: self.$text).keyboardType(UIKeyboardType.default)
                TextField("Email Entry", text: $text).keyboardType(UIKeyboardType.default)
            }.padding(.all)
            HStack{
                Image(systemName: "pencil.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color("Menu Color"))
                    .padding(.leading)
                    .frame(width: 30.0, height: 30.0)
                
                Text("Swift UI provides constants to specify the keyboard input type, such as URL pad, decimal pad, and web search pad.")
                    .padding()
            }
            }
        }
    }

