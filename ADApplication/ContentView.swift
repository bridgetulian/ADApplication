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
                
                return NavigationView {
                    GeometryReader { geometry in
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
        /*
        NavigationView {
            VStack {
                
                ZStack(alignment: .leading) {
                    GeometryReader { geometry in
                        ExtractedView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                        
                        if self.showMenu {
                            MenuView()
                                .frame(width: geometry.size.width/2, height: geometry.size.height)
                                .transition(.move(edge: .leading))
                        }
                    }
                   
                }
                
                Text("ADApplication")
                NavigationLink(destination: HomeView()) {
                    Text("Continue")
                }
                Spacer()
            }
        }
        .padding()*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View{
        Text("Home Page")
    }
}

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "homekit")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                Text("Home")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 100)
            HStack {
                Image(systemName: "newspaper")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                Text("Visual Guidelines")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "mail.stack")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                Text("Feedback")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 30)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .imageScale(.large)
                Text("About Us")
                    .foregroundColor(Color(red: 196/255, green: 196/255, blue: 196/255))
                    .font(.headline)
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 81/255, blue: 109/255))
        .edgesIgnoringSafeArea(.all)
    }
}
