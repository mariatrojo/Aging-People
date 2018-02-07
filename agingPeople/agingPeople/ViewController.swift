//
//  ViewController.swift
//  agingPeople
//
//  Created by Maria Teresa Rojo on 1/12/18.
//  Copyright © 2018 Maria Rojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var names = [
        "Homer", "Marge", "Bart", "Lisa", "Maggie", "Milhouse",
        "Mr. Burns", "Apu", "Ralph", "Chief Wiggum",
        "Sideshow Bob", "Ned Flanders"
        ]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(arc4random_uniform(91)+5) years old"
        return cell
    }
}
