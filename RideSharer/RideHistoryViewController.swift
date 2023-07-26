//
//  RideHistoryViewController.swift
//  RideSharer
//
//

import UIKit

class RideHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        cell.textLabel?.text = self.rideHistory[indexPath.row].0
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertView = UIAlertController(title: "Price", message: rideHistory[indexPath.row].1, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { alertAction in
            self.dismiss(animated: true)
        }
        alertView.addAction(action)
        present(alertView, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rideHistory.count
    }
    
    @IBOutlet var tableView: UITableView!
    
    
    let rideHistory = [("Driver: Joe, 12/29/2021", "$26.50"),
                       ("Driver: Sandra, 01/03/2022", "$13.10"),
                       ("Driver: Hank, 01/11/2022", "$16.20"),
                       ("Driver: Michelle, 01/19/2022", "$8.50")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
