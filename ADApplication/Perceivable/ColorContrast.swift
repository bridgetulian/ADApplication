//
//  ColorContrast.swift
//  ADApplication
//
//  Created by Natalie Wright on 11/13/22.
//

import SwiftUI

struct ColorContrast: View {
    var body: some View {
        ScrollView{
            VStack {
                Text("Color Contrast")
                    .font(.title)
                    .padding(.top)
                    .navigationBarBackButtonHidden(false)
                
                Text("Via the WCAG 2.0 Guidelines: Contrast (Minimum) (Level AA) which requires a contrast of at least 4.5:1 (or 3:1 for large-scale text) and Contrast (Enhanced) (Level AAA) which requires a contrast of at least 7:1 (or 4.5:1 for large-scale text)").padding(.all)
                
                GroupBox(label: Text("Poor Contrast")) {
                    HStack{
                        Text("Contrast Ratio: 2.78:1")                   .frame(width: 120.0, height: 80.0)
                        
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(red: 0.7294117647058823, green: 0.7843137254901961, blue: 0.9490196078431372))
                            .frame(width: 80, height: 80)
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(red: 0.40784313725490196, green: 0.4392156862745098, blue: 0.6941176470588235))
                            .frame(width: 80, height: 80)
                    }
                    Text("This is some important text")
                        .foregroundColor(Color(red: 0.40784313725490196, green: 0.4392156862745098, blue: 0.6941176470588235))
                        .padding()
                        .frame(height: 30)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(red: 0.7294117647058823, green: 0.7843137254901961, blue: 0.9490196078431372)))
                }.padding(.horizontal)
                
                GroupBox(label: Text("Great Contrast")) {
                    HStack{
                        Text("Contrast Ratio: 10.40:1")
                            .frame(width: 120.0, height: 80.0)
                        
                        
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(red: 0.8666666666666667, green: 0.9764705882352941, blue: 0.9921568627450981))
                            .frame(width: 80, height: 80)
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(red: 0.054901960784313725, green: 0.19215686274509805, blue: 0.5450980392156862))
                            .frame(width: 80, height: 80)
                    }
                    Text("This is some important text")
                        .foregroundColor(Color(red: 0.054901960784313725, green: 0.19215686274509805, blue: 0.5450980392156862))
                        .padding()
                        .frame(height: 30)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(red: 0.8666666666666667, green: 0.9764705882352941, blue: 0.9921568627450981)))
                }.padding(.horizontal)
                HStack{
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(Color("Menu Color"))
                        .padding(.leading)
                        .frame(width: 30.0, height: 30.0)
                        
                    Text("The WCAG guidelines pertain to larger screens that have a default larger text, and thus the large-scale text is easily readable for most users. For mobile apps the default size text is smaller and thus the large-scale text may still require a higher contrast than determined by the WCAG.").padding(.all)
                }
                Spacer()
                
                Text("Extra Resources")
                Link("WCAG Color Contrast Checker", destination: URL(string: "https://accessibleweb.com/color-contrast-checker/")!)
                
                
            }
            
        }
    }
    }


struct ColorContrast_Previews: PreviewProvider {
    static var previews: some View {
        ColorContrast()
    }
}
