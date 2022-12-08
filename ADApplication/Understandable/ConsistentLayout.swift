//
//  ConsistentLayout.swift
//  ADApplication
//
//  Created by Abigail Wright on 12/6/22.
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
                    .padding([.leading, .bottom, .trailing])
                Text("Change these sample app headers through the menu button to see examples of consistent and inconsistent page layout.")
                    .font(.subheadline)
                    .padding(.bottom)
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
                        Image(systemName: "doc.text")
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
                        Image(systemName: "doc.text")
                    }
                    }
                }.padding([.leading, .bottom, .trailing])
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
                        Image(systemName: "doc.text")
                    }
                    }
                    if(changed2) {
                        HStack {
                            Image(systemName: "doc.text")
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
