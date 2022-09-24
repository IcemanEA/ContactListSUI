//
//  PhoneEmailView.swift
//  ContactListSUI
//
//  Created by Egor Ledkov on 24.09.2022.
//

import SwiftUI

struct InfoRowView: View {
    let image: String
    let info: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(info)
        }
    }
}

struct PhoneEmailView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRowView(image: "phone", info: "+7 921 929 44 71")
    }
}
