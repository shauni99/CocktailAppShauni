//
//  OnboardingView.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 21/12/2020.
//

import SwiftUI

struct OnboardingView: View {
    var subviews = [
        UIHostingController(rootView: AboutView(imageString: "ikzelf")),
        UIHostingController(rootView: AboutView(imageString: "cocktails2")),
        UIHostingController(rootView: AboutView(imageString: "grocery"))
    ]
    
    var titles = ["Shauni Vansteyvoort","Add favorites","Make grocery list"]
    var descriptions = ["This app is created due to an iOS assignment for school and makes use of the CocktailDB API", "This app allows you to add your favorite cocktails to a separate favorite view", "This app allows you to make a grocery list based upon the cocktails you liked"]
    @State var currentPageIndex = 0
    
    var body: some View {
      
        ZStack{
            Color(red: 1.009, green: 0.954, blue: 1.003)
        VStack{
        
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
            Group {
                Text(titles[currentPageIndex])
                    .font(.system(size: 25, weight: .bold
                    ,design: .rounded))
                Text(descriptions[currentPageIndex])
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                        .multilineTextAlignment(.center)
                        .padding(.top, 15)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 80)
            }.padding()
            
            
            HStack{
                PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                Spacer()
            }
            Button(action: {
                if self.currentPageIndex + 1 == self.subviews.count {
                    self.currentPageIndex = 0
                } else {
                    self.currentPageIndex += 1
                }
            }) {
                ButtonContent()
            }.padding()
            
         
            
            }.navigationBarTitle("About")
    }
        
           
    }
 
}

struct ButtonContent: View {
    var body: some View{

    Image(systemName: "arrow.right")
        .resizable()
        .foregroundColor(.black)
        .frame(width: 30, height: 30)
        .padding()
        .background(Color(red: 1.018, green: 0.6, blue: 1.023))
        .cornerRadius(30)
}
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
