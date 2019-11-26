//
//  CitizenData.swift
//  Day60 JSON Friends
//
//  Created by Daniel O'Leary on 11/22/19.
//  Copyright © 2019 Impulse Coupled Development. All rights reserved.
//

import Foundation

struct CitizenData: Codable {
	var id: String
	var isActive: Bool
	var name: String
	var age: Int
	var company: String
	var email: String
	var address: String
	var about: String
	var registered: String
//	let tags: [String]
	
	var convertToString: String {
		let name = "Dan"
		return name
	}
}


struct Friends {
	let id: String
	let name: String
}
