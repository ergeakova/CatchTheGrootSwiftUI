//
//  GrootImage.swift
//  CatchTheGroot
//
//  Created by Erge Gevher Akova on 20.07.2022.
//

import SwiftUI

struct GrootImage: View {
    let scWidth = UIScreen.main.bounds.width
    let scHeigth = UIScreen.main.bounds.height
    var body: some View {
        Image("groot")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: scWidth * 0.3, height: scHeigth * 0.2, alignment: .center)
    }
}

struct GrootImage_Previews: PreviewProvider {
    static var previews: some View {
        GrootImage()
    }
}
