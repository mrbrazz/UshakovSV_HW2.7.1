//
//  DetailPersonViewController.swift
//  UshakovSV_HW2.7.1
//
//  Created by Сергей Ушаков on 28.07.2021.
//

import UIKit

class DetailPersonViewController: UIViewController {
	
	var currentPerson: Person?
		
	@IBOutlet weak var emailLabel: UILabel!
	@IBOutlet weak var phoneLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		emailLabel.text = currentPerson?.email
		phoneLabel.text = currentPerson?.phone
	}
}
