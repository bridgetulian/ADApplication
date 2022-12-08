//
//  ConsistentLayout.swift
//  ADApplication
//
//  Created by Bridget Ulian on 12/7/22.
//

import SwiftUI

struct ChangingScreen: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Changing Screen: Portrait/Landscape")
                    .font(.title)
                    .padding()
                Text("**Developers should support both landscape and portrait orientations.**")
                    .multilineTextAlignment(.center)
                    .padding([.horizontal],10)
                GroupBox {
                    HStack {
                        Image(systemName: "pencil.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(Color("Menu Color"))
                            .padding(.leading)
                            .frame(width: 40.0, height: 40.0)
                        Text("**SwiftUI** supports simulations in both portrait and landscape modes. Consistently throughout development, ensure that all content is visible in both modes.")
                            .padding()
                    }
                }.padding(.horizontal)
                VStack {
                    Text("**Developer Tool:**")
                        .padding([.bottom],2)
                    Text("ScrollView is a great way to ensure content is visible in both landscape and portrait modes.")
                        .multilineTextAlignment(.center)
                        .padding([.bottom])
                    Text("**Why?**")
                        .padding([.bottom],2)
                    Text("ScrollView makes sure all content appears on the page, because it allows containers to stretch to fit content (i.e. text, image) even if that container goes beyond the length/width of the screen!")
                        .padding([.horizontal,.bottom],15)
                        .multilineTextAlignment(.center)
                }
                .frame(width:325)
                .padding()
                .border(Color("Menu Color"))
                GroupBox {
                    VStack {
                        Text("**ScrollView Implementation**")
                            .padding([.top],2)
                        Text("ScrollView { \n \t Text('Text here')\n}")
                            .padding([.top, .trailing],5)
                    }
                    .frame(width:295)
                    .padding()
                    .foregroundColor(Color("Menu Color"))
                }.padding(.horizontal)
                Spacer()
            }
        }
    }
}

struct ConsistentLayout_Previews: PreviewProvider {
    static var previews: some View {
        ChangingScreen()
    }
}
