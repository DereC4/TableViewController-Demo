//
//  PipViewController.swift
//  ChenDerek-HW4
//
//  Created by Derek on 10/3/25.
//

import UIKit

class SuitViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var pipTable: UITableView!
    let suits = ["clubs", "diamonds", "hearts", "spades"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pipTable.dataSource = self
        pipTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return suits.count
    }

    // cell appearance
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // set "reuseIdentifier" in the storyboard for the prototype cell.
        cell.textLabel?.text = suits[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSuit = suits[indexPath.row]
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
