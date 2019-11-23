//
//  ContentView.swift
//  Day60 JSON Friends
//
//  Created by Daniel O'Leary on 11/22/19.
//  Copyright © 2019 Impulse Coupled Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var results = [CitizenData]()
		
	var body: some View {
		NavigationView {
			Form { Section(header: HStack {
					Spacer()
					Text("c. 1984")})
				{
					NavigationLink(destination: DetailView()) {
						VStack(alignment: .leading) {
							List(results, id: \.id) { result in
								Text(result.name)
									.font(.headline)
								Text("Age: \(result.age)")
//								Text("Address: \(result.address)")
							}
						}
					}
				}
			}
			.navigationBarTitle("Ministy of Love")
			.onAppear(perform: parseJSON)
		}
		
    } // MARK: End of Body
	
	func parseJSON() {
		guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
			print("Invalid URL")
			return
		}
		let request = URLRequest(url: url)
		URLSession.shared.dataTask(with: request) { data, response, error in
			if let data = data {
				if let decodedResponse = try? JSONDecoder().decode([CitizenData].self, from: data) {
					// Back to main thread
					DispatchQueue.main.async {
						// update UI
						self.results = decodedResponse
					}
					return
				}
			}
			print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
		}.resume()
	}
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
