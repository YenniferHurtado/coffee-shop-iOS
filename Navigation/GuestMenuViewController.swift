
import UIKit

class GuesMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("GuesMenuView")
    }
    @IBAction func btnExit(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension GuesMenuViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        return cell
    }
}

