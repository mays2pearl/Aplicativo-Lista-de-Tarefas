//
//  CadastroTarefaViewController.swift
//  Lista de Tarefas
//
//  Created by Maysa on 02/12/21.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func adicionarTarefa(_ sender: UIButton) {
    
    
    if let textoDigitado = tarefaCampo.text {
        
        let tarefa = TarefaUserDefaults()
        tarefa.salvar(tarefa: textoDigitado)
        self.tarefaCampo.text = ""
        
        let dados = tarefa.listar()
        
        print( dados )
    }
}
}
