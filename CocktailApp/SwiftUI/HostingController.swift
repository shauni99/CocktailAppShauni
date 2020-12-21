//
//  HostingController.swift
//  CocktailApp
//
//  Created by shauni vansteyvoort on 19/12/2020.
//

import SwiftUI

class HostingController: UIHostingController<AnyView> {

    @objc required dynamic init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder, rootView: AnyView(OnboardingView()))
       }

}
