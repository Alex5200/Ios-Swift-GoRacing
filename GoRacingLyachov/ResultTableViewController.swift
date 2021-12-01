

import UIKit

struct resultData {
    var playerName: String
    var resultGame: String
    var timeGame: String
}
var results: [resultData] = []

class ResultTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        results.append(resultData(playerName: "test", resultGame: "test", timeGame: "test"))
       }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "row", for: indexPath)
      return cell
    }
}
