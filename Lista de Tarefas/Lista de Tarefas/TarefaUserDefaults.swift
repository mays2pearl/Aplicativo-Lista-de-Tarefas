//
//  TarefaUserDefaults.swift
//  Lista de Tarefas
//
//  Created by Maysa on 02/12/21.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar(tarefa: String){
        
        
        self.tarefas = listar()
        self.tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func remover(indice: Int) {
        
        self.tarefas = listar()
        self.tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func listar() -> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else{
            return []
        }
        
    }
}
