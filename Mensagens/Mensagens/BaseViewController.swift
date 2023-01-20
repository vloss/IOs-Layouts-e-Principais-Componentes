//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Vinicius Loss on 19/01/23.
//  Copyright © 2023 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func changeColor (_ sender: UIButton){
        
    }

}
