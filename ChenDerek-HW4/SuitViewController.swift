// Project: ChenDerek-HW4
// EID: dyc377
// Course: CS371L

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
        cell.textLabel?.text = suits[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let theSuit = suits[indexPath.row]
        selectedSuit = theSuit
        
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
