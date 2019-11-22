//
//  ContentView.swift
//  Day60 JSON Friends
//
//  Created by Daniel O'Leary on 11/22/19.
//  Copyright © 2019 Impulse Coupled Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
    var body: some View {
		NavigationView {
			Form {
				Section(header: HStack {
					Spacer()
					Text("Citzen Data c. 1984")}) {
					NavigationLink(destination: DetailView()) {
						VStack(alignment: .leading) {
							Text("Dan O'Leary")
								.font(.headline)
							Text("Age: 42")
							Text("City: Rosemount")
						}
					}
				}
			}
			.navigationBarTitle("Ministy of Love")
			
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
