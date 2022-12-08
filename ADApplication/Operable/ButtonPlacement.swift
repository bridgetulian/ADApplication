//
//  ButtonPlacement.swift
//  ADApplication
//
//  Created by Abigail Wright on 12/4/22.
//

import SwiftUI

struct ButtonPlacement: View {
    var body: some View {
        VStack {
            Text("Place Buttons in Accessible Locations")
                .font(.title)
                .padding(.all)
                .multilineTextAlignment(.center)
            Text("Always place important information before the page scroll. This way users can locate content without performaning an interaction.")
                .padding([.leading, .bottom, .trailing])
            Image("Thumbzone")
                .resizable(capInsets: EdgeInsets())
                .aspectRatio(contentMode: .fit)
                .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
            HStack{
                Image(systemName: "pencil.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color("Menu Color"))
                    .padding(.leading)
                    .frame(width: 30.0, height: 30.0)
                Text("You can use thumb zone heat maps such as the one above to see where users can easily touch on different screens. Check out the links below for more information and techniques.").padding([.leading, .top, .trailing])
            }
            Link("The Thumb Zone", destination: (URL(string: "https://www.smashingmagazine.com/2016/09/the-thumb-zone-designing-for-mobile-users/")!)).padding(.all)
            Spacer()
        }
    }
}

struct ButtonPlacement_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPlacement()
    }
}
