//
//  FeedbackView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/27/22.
//

import Foundation
import SwiftUI

struct FeedbackView: View {
        
    @State var showMenu = false

    var body: some View{
        
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }

        NavigationView {
            GeometryReader { geometry in
                
                VStack {
                    if self.showMenu == false {
                        Text("Feedback")
                            .font(.title)
                        Text("Part of maintaining universal usability is asking for an implementing feedback. Please let us know if there is anything that could make our application more usable!")
                            .padding([.leading, .bottom, .trailing])
                        Form {
                            TextField("Name & Contact (optional):", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            TextEditor(text: .constant("Placeholder"))
                                .frame(height: 400.0)
                    
                            Button("Submit") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                        }
                    }
                }
                
                ZStack(alignment: .leading) {
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("ADApplication", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
        .navigationBarBackButtonHidden(true)
    }
}

