//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ScreenColorViewController: BaseViewController {
    
    @IBOutlet weak var viBorder: UIView!
    
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    // Enviando informações de uma View para outra
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // recupera próxima view controller e já define ela como a próxima viewcontroller
        // Instancia a próxima View
        let vc = segue.destination as! ResultViewController     
        
        //Passa para a variavel message que é herdada de BaseViewController o conteudo da MessageViewCOntroller
        vc.message = message
        vc.useBorderWhite = swWhiteBorder.isOn
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBAction func changeBorder(_ sender: UISwitch) {
        // Validando com operador ternario
        viBorder.backgroundColor = swWhiteBorder.isOn ? .white : .clear
    }
}

extension ScreenColorViewController: ColorPickerDelegate{
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}
