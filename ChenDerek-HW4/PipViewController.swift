// Project: ChenDerek-HW4
// EID: dyc377
// Course: CS371L

import UIKit

class PipViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var pipTable: UITableView!
    let pips = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pipTable.dataSource = self
        pipTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pips.count
    }

    // cell appearance
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = pips[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPip = pips[indexPath.row]
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
