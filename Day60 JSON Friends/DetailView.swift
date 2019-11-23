//
//  DetailView.swift
//  Day60 JSON Friends
//
//  Created by Daniel O'Leary on 11/22/19.
//  Copyright © 2019 Impulse Coupled Development. All rights reserved.
//

import SwiftUI

struct DetailView: View {
	var name: String
	var company: String
	var about: String
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("Company: \(company)")
				.font(.headline)
				.padding(.bottom)
			Text("Demographics;")
				.font(.headline)
			Text(about)
			Spacer()
		}
		.padding()
		.navigationBarTitle(name)
	}
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView(name: "Dan O'Leary", company: "Impulse Coupled Development", about: "Does things.")
    }
}
