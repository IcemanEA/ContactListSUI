//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Egor Ledkov on 24.09.2022.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getDataFromStore()
    
    var body: some View {
        TabView {
            PersonListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            PersonSectionsView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
