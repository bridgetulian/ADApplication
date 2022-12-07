//
//  KeyboardControl.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/6/22.
//

import SwiftUI

struct KeyboardControl: View {
    @State var running: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                Text("Keyboard Control")
                    .font(.title)
                    .padding(.all)
                HStack {
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding([.leading], 30)
                        .frame(width: 40.0, height: 40.0)
                    Text("Supporting external keyboard use in application helps users: \n1. with visual disabilities \n 2.  with dexterity/mobility disabilities\n 3. who could benefit from the consistency of an external keyboard.")
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .padding(.horizontal)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Menu Color"))
                        .padding(.horizontal))
                GroupBox {
                    Text("**SwiftUI** provides automatic connection to an external keyboard. Adding custom gestures is simple and can be helpful for users.")
                        .multilineTextAlignment(.center)
                }.padding()
                
                GroupBox {

                    if running{
                        Button("Run Program") {
                            running.toggle()
                        }.keyboardShortcut("r", modifiers: .shift)
                            .foregroundColor(Color("Menu Color"))
                            .padding(.horizontal)
                        Text("is running")
                            .padding(.top)
                            .foregroundColor(Color("Menu Color"))
                    }
                    if running == false{
                        Button("Run Program") {
                            running.toggle()
                        }.keyboardShortcut("r", modifiers: .shift)
                            .padding(.horizontal)
                        Text("not running")
                            .padding(.top)
                            .foregroundColor(Color("Menu Color"))
                    }
                    Text("The button above is activated by either clicking the button, or by typing 'Shift + r' on an external keyboard.")
                        .multilineTextAlignment(.center)
                        .padding(.top)
                }.frame(width: 350)
                Text("Code to add a keyboard shortcut in SwiftUI is very simple:")
                    .padding([.top, .bottom],5)
                    .multilineTextAlignment(.center)
                GroupBox{
                    Text("Button('run program') { \n \t running.toggle() \n}.keyboardShortcut('r', modifiers: .shift)")
                        .foregroundColor(Color("darkred"))
                }.padding([.horizontal])
                Spacer()
            }
        }
    }
}

struct KeyboardControl_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardControl()
    }
}

