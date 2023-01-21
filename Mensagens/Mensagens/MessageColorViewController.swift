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
        lbMessage.textColor = message.textColor
    }
    
    // Enviando informações de uma View para outra
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // recupera próxima view controller e já define ela como a próxima viewcontroller
        // Instancia a próxima View
        let vc = segue.destination as! ScreenColorViewController
        
        //Passa para a variavel message que é herdada de BaseViewController o conteudo da MessageViewCOntroller
        vc.message = message
        
    }
}

extension MessageColorViewController: ColorPickerDelegate{
    func applyColor(color: UIColor){
        // recebe a cor selecionada no colorPicker e aplica no texto
        lbMessage.backgroundColor = color
        
        // define no objeto message a cor escolhida do texto, para passar para a próxima tela
        message.backgroundColor = color
        
    }
}
