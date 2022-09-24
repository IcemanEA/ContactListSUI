//
//  PersonListDetailView.swift
//  ContactListSUI
//
//  Created by Egor Ledkov on 24.09.2022.
//

import SwiftUI

struct PersonListDetailView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                Text(person.phone)
            }
            HStack {
                Image(systemName: "envelope")
                Text(person.email)
            }
        }
        .navigationTitle(person.name)
    }
}

struct PersonListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListDetailView(person: Person.getDataFromStore().first!)
    }
}
