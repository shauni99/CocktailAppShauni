//
//  AboutView.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 21/12/2020.
//

import SwiftUI

struct AboutView: View {
    var imageString: String
    var body: some View{
        ZStack{
            Color(red: 1.009, green: 0.954, blue: 1.003)
        Image(imageString).resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200
                   , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
    }
}


/*struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(imageString: "ikzelf")
    }
}*/
