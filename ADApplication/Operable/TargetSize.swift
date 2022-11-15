//
//  TargetSize.swift
//  ADApplication
//
//  Created by Abby Wright on 11/14/22.
//

import SwiftUI

struct TargetSize: View {
   
    
    func SampleButton(sizex: CGFloat, source: String) -> some View {
        return HStack {
            Text(source)
            RoundedRectangle(cornerRadius: 10).frame(width: sizex, height: sizex).foregroundColor(Color("Menu Color"))
            Spacer()
        }
    }
    
    
    var body: some View {
        VStack{
            Text("Touch Target Size")
                .font(.title)
                .padding(.top)
                .navigationBarBackButtonHidden(false)
            Text("Touch targets must be atleast 9mm by 9mm, this is regardless of zoom-in capability. Also, small touch targets should have a border of inactive space.").padding(.all)
            
            HStack{
                Image(systemName: "pencil.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(Color("Menu Color"))
                    .padding(.leading)
                    .frame(width: 30.0, height: 30.0)
                
                Text("By conversion, 9mm is approximately 34x34 pixels. Apple Developer suggests buttons be 44x44 pixels when they are the primary input method. Android suggests 48x48.").padding(.all)
            }
            GroupBox(label: Text("Touch Target Examples")) {
                SampleButton(sizex: 34.0, source: "WCAG")
                SampleButton(sizex: 44.0, source: "Apple")
                SampleButton(sizex: 48.0, source: "Android")

            }.padding(.all)
            Spacer()

        }
    }
}

struct TargetSize_Previews: PreviewProvider {
    static var previews: some View {
        TargetSize()
    }
}
