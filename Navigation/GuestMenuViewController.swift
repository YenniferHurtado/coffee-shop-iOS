
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

