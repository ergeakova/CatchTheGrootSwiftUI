//
//  GrootImage.swift
//  CatchTheGroot
//
//  Created by Erge Gevher Akova on 20.07.2022.
//

import SwiftUI

struct GrootImage: View {
    let groot: Groot
    
    var body: some View {
        Image("groot")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: groot.grootWidth, height: groot.grootHeigth, alignment: .center)
            .padding()
    }
}

struct GrootImage_Previews: PreviewProvider {
    static var previews: some View {
        GrootImage(groot: Groot())
    }
}
