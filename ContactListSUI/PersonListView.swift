//
//  PersonListView.swift
//  ContactListSUI
//
//  Created by Egor Ledkov on 24.09.2022.
//

import SwiftUI

struct PersonListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                
                Text(person.name)
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(persons: Person.getDataFromStore())
    }
}
