//
//  ViewController.swift
//  superKahramanKitabi
//
//  Created by Beyza Begün Özkısırlar on 19.03.2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var superKahramanIsimleri = [String]()
    var superKahramanGorselIsimleri = [String]()
    var secilenIsim = ""
    var secilenGorsel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Ironman")
        superKahramanIsimleri.append("Kaptan Amerika")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Wonder Woman")
        
       // var superKahramanGorselleri = [UIImage]()
       //superKahramanGorselleri.append(UIImage(named:"batman")!)
        
        
        superKahramanGorselIsimleri.append("Batman")
        superKahramanGorselIsimleri.append("Ironman")
        superKahramanGorselIsimleri.append("Kaptan Amerika")
        superKahramanGorselIsimleri.append("Superman")
        superKahramanGorselIsimleri.append("Wonder Woman")
        
       }
//numberOfRowInsection -> kaç tane row olacak
//cellForRow atIndexPath ->hücrenin içerisinde neler gösterilicek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanGorselIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle:UITableViewCell.EditingStyle ,forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superKahramanGorselIsimleri.remove(at: indexPath.row)
            superKahramanIsimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)//animasyonla sildik
        }
    }
    
//didselect
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       secilenIsim = superKahramanIsimleri[indexPath.row]
       secilenGorsel = superKahramanIsimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.secilenKahramanIsmi = secilenIsim
            destinationVC.secilenKahramanGorselIsmi = secilenGorsel
        }
    }
}

