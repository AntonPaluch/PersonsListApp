//
//  SecondTableViewController.swift
//  PersonsListApp
//
//  Created by Pandos on 17.02.2021.
//

import UIKit

class SecondTableViewController: UITableViewController {

    var personList = Person.getPersonList()
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        return person.fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
       
        let person = personList[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phone

        return cell
    }
}
