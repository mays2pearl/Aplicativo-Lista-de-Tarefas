//
//  TarefasTableViewController.swift
//  Lista de Tarefas
//
//  Created by Maysa on 02/12/21.
//

import UIKit

class TarefasTableViewController: UITableViewController {

    var tarefas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        atualizarListaTarefas()
        print(tarefas)
       
       
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            let tarefa =  TarefaUserDefaults()
            tarefa.remover(indice: indexPath.row)
            atualizarListaTarefas()
            
        }
        
    }
    func atualizarListaTarefas(){
        let tarefa = TarefaUserDefaults()
        self.tarefas = tarefa.listar()
        tableView.reloadData()
        
    }
   

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        celula.textLabel?.text = tarefas[indexPath.row]
        
        return celula
    }

}
