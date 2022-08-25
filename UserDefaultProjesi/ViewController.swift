//
//  ViewController.swift
//  UserDefaultProjesi
//
//  Created by Beyza Begün Özkısırlar on 5.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
    let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
    

    //nil olup olmadığının kontrolü çok önemli uygulama çökebilir
    //as -> casting
    
        if let gelenNot = kaydedilenNot as? String{
            notLabel.text = "yapılacak iş : \(gelenNot)"
       
    }
        
        if let gelenZaman = kaydedilenZaman as? String{
            zamanLabel.text = "yapılacak zaman : \(gelenZaman)"
           }
}

    @IBAction func kaydetTiklandi(_ sender: Any) {
        
        UserDefaults.standard.set(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = "yapılacak iş :\(notTextField.text!)"
        zamanLabel.text = "yapılacak zaman :\(zamanTextField.text!)"
        
        }
    @IBAction func silTiklandi(_ sender: Any) {
        
 
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        
        //"" -> boş string
        
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "yapılacak iş :"
            
        }
        if (kaydedilenZaman as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "yapılacak zaman: "
        }
    
        }

    }






