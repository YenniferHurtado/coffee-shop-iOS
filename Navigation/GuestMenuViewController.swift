
import UIKit

class GuesMenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var nib: UINib = UINib()
    
    var coffeList: Dictionary<String,String> = ["Irish":"5",
                                                "Ristretto":"5",
                                                "Mocha":"5",
                                                "Coretto":"3",
                                                "Glace":"5",
                                                "Americano":"2",
                                                "Made Raf":"2",
                                                "Romano":"1",
                                                "Machchiato":"2",
                                                "Latte":"2",
                                                "Cappucchino":"2",
                                                "Frappe":"2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nib = UINib.init(nibName: "CoffeeCell", bundle: nil)
    }
    @IBAction func btnExit(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

    extension GuesMenuViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CoffeeCell
        
        let coffeeName = Array(coffeList)[indexPath.row].key
        let coffeePrice = Array(coffeList)[indexPath.row].value
        
        cell.name.text? = coffeeName
        cell.price.text? = coffeePrice
        cell.ImageCoffee.image = UIImage.init(named: coffeeName)
        
//        cell.textLabel?.text = Array(coffeList)[indexPath.row].key
//        cell.detailTextLabel?.text = Array(coffeList)[indexPath.row].value
        cell.accessoryType = .none
        
        return cell
    }
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 110.00
        }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
        }
    }
}

