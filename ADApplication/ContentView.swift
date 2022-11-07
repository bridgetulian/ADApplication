//
//  ContentView.swift
//  ADApplication
//
//  Created by Bridget Ulian on 10/18/22.
//Git check - Abby

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
                    .onEnded {
                        if $0.translation.width < -100 {
                            withAnimation {
                                self.showMenu = false
                            }
                        }
                    }
                
        //return NavigationView {
            NavigationView {
                    GeometryReader { geometry in
                        
                        VStack {
                            if self.showMenu == false {
                                Text("Welcome to ADApplication")
                                    .frame(width:geometry.size.width)
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


