//
//  ConsistentLayout.swift
//  ADApplication
//
//  Created by Natalie Wright on 12/6/22.
//

import SwiftUI


struct ConsistentLayout: View {

    @State var changed1 = false
    @State var changed2 = false
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Provide a Consistent Layout")
                    .font(.title)
                    .padding()
                Text("By ensuring that compontents appear in a consistent order for each page helps users navigate the application better. In particular, users quickly know where to look for navigation elements and important information.")
                    .padding(.horizontal)
                GroupBox(label: Text("Consistent Layout of Header")) {
                    if(!changed1) {
                        HStack {
                        Menu("Menu") {
                            Button("Click Here") {
                                changed1.toggle()
                            }
                            Text("Menu Item 2")
                            Text("Menu Item 3")
                        }
                        Spacer()
                        Text("Page Title")
                        Spacer()
                        Image(systemName: "plus.square.on.square")
                    }
                    }
                    if(changed1) {
                        HStack {
                        Menu("Menu") {
                            Button("Click Here") {
                                changed1.toggle()
                            }
                            Text("Menu Item 2")
                            Text("Menu Item 3")
                        }
                        Spacer()
                        Text("New Page Title")
                        Spacer()
                        Image(systemName: "plus.square.on.square")
                    }
                    }
                }.padding(.horizontal)
                GroupBox(label: Text("Inconsistent Layout of Header")) {
                    if(!changed2) {
                        HStack {
                        Menu("Menu") {
                            Button("Click Here") {
                                changed2.toggle()
                            }
                            Text("Menu Item 2")
                            Text("Menu Item 3")
                        }
                        Spacer()
                        Text("Page Title")
                        Spacer()
                        Image(systemName: "plus.square.on.square")
                    }
                    }
                    if(changed2) {
                        HStack {
                            Image(systemName: "plus.square.on.square")
                            Spacer()
                        Menu("Menu") {
                            Text("Menu Item 3")
                            Text("Menu Item 2")
                            Button("Click Here") {
                                changed2.toggle()
                            }
                        }
                        Spacer()
                        Text("New Page Title")
                    }
                    }
                }.padding(.horizontal)
                Spacer()
                
            }
        }
    }
}

struct ConsistentLayout_Previews: PreviewProvider {
    static var previews: some View {
        ConsistentLayout()
    }
}
