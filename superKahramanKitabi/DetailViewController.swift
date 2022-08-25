//
//  DetailViewController.swift
//  superKahramanKitabi
//
//  Created by Beyza Begün Özkısırlar on 19.03.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var secilenKahramanIsmi = ""
    var secilenKahramanGorselIsmi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: secilenKahramanIsmi)
        label.text = secilenKahramanIsmi
    }
    

  
}
