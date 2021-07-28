//
//  DataManager.swift
//  UshakovSV_HW2.7.1
//
//  Created by Сергей Ушаков on 28.07.2021.
//

import Foundation

class DataManager {
	
	static let shared = DataManager()
	
	private init() { }
	
	var persons: [Person] {
		var result: [Person] = []
		for index in 0..<names.count {
			result.append(
				Person(
					name: names[index],
					lastName: lastNames[index],
					email: emails[index],
					phone: phones[index]
				)
			)
		}
		return result
	}
	
	// MARK: - Private Properties
	
	private let names = [
		"Anton",
		"Oleg",
		"Gena"
	].shuffled()

	private let lastNames = [
		"Ivanov",
		"Petrov",
		"Kozlov"
	].shuffled()
	
	private let emails = [
		"123@ru",
		"456@ru",
		"789@ru"
	].shuffled()
	
	private let phones = [
		"8921333247",
		"9315664534",
		"89113456798"
	].shuffled()
}


struct Settings {
	static let shared = Settings()
	var username: String?

	private init() { }
}
