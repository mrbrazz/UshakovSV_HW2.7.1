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
		tableView.delegate = self
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let detailVC = segue.destination as? DetailPersonViewController else {
			return
		}
		detailVC.currentPerson = sender as? Person
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

// MARK: - UITableViewDelegate

extension PersonListViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let person = DataManager.shared.persons[indexPath.row]
		tableView.deselectRow(at: indexPath, animated: true)
		performSegue(withIdentifier: "showDetail", sender: person)
	}
}
