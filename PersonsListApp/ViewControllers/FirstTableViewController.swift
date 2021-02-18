//
//  FirstTableViewController.swift
//  PersonsListApp
//
//  Created by Pandos on 17.02.2021.
//

import UIKit

class FirstTableViewController: UITableViewController {

    var personList = Person.getPersonList()
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = personList[indexPath.row]
        cell.textLabel?.text = person.fullName
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let mostInfoVC = segue.destination as? MostInfoViewController else { return }
            mostInfoVC.person = personList[indexPath.row]
        }
    }

