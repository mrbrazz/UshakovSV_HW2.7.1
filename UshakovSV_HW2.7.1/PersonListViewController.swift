//
//  PersonListViewController.swift
//  UshakovSV_HW2.7.1
//
//  Created by Сергей Ушаков on 28.07.2021.
//

import UIKit

class PersonListViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
	}
}

// MARK: - UITableViewDataSource

extension PersonListViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		DataManager.shared.persons.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
		let person = DataManager.shared.persons[indexPath.row]
		cell.textLabel?.text = person.fullName
		return cell
	}
}
