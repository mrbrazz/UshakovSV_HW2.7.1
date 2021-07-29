//
//  ExtendPersonListViewController.swift
//  UshakovSV_HW2.7.1
//
//  Created by Сергей Ушаков on 28.07.2021.
//

import UIKit

class ExtendPersonListViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
	}
}

// MARK: - UITableViewDataSource

extension ExtendPersonListViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		DataManager.shared.persons.count
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
		let person = DataManager.shared.persons[indexPath.section]
		cell.textLabel?.text = person.email
		cell.detailTextLabel?.text = person.phone
		return cell
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		let person = DataManager.shared.persons[section]
		return person.fullName
	}
}
