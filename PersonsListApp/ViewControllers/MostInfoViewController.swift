//
//  mostInfoViewController.swift
//  PersonsListApp
//
//  Created by Pandos on 17.02.2021.
//

import UIKit

class MostInfoViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
