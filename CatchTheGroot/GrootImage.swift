//
//  GrootImage.swift
//  CatchTheGroot
//
//  Created by Erge Gevher Akova on 20.07.2022.
//

import SwiftUI

struct GrootImage: View {
    let grootWidth = UIScreen.main.bounds.width * 0.3
    let grootHeigth = UIScreen.main.bounds.height * 0.2
    
    var body: some View {
        Image("groot")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: grootWidth, height: grootHeigth, alignment: .center)
    }
}

struct GrootImage_Previews: PreviewProvider {
    static var previews: some View {
        GrootImage()
    }
}
