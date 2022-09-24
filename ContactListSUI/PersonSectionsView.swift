//
//  PersonSectionsView.swift
//  ContactListSUI
//
//  Created by Egor Ledkov on 24.09.2022.
//

import SwiftUI

struct PersonSectionsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(person.name) {
                    InfoRowView(image: "phone", info: person.phone)
                    InfoRowView(image: "envelope", info: person.email)
                }.headerProminence(.increased)
            }
            .navigationTitle("Numbers")
        }
    }
}

struct PersonSectionsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonSectionsView(persons: Person.getDataFromStore())
    }
}
