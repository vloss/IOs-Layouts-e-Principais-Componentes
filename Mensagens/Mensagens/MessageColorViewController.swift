//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
    }
    
    // Enviando informações de uma View para outra
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // recupera próxima view controller e já define ela como a próxima viewcontroller
        // Instancia a próxima View
        let vc = segue.destination as! ScreenColorViewController
        
        //Passa para a variavel message que é herdada de BaseViewController o conteudo da MessageViewCOntroller
        vc.message = message
    }
    
    override func changeColor(_ sender: UIButton) {
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        
        colorPicker.modalPresentationStyle = .overCurrentContext
        
        present(colorPicker, animated: true)
    }
}

