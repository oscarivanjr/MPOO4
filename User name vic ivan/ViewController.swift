//
//  ViewController.swift
//  User name vic ivan
//
//  Created by user143950 on 10/15/18.
//  Copyright © 2018 user143950. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var users = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        users = defaults.object(forKey: "users") as? [String] ?? [String]()
        print(users.count)
        for cadena in users{
            print(cadena)
        }
        
    }
    @IBOutlet weak var box: UITextField!
    
    @IBAction func save(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let dato = box.text{
        users.append(dato)
        defaults.set(dato, forKey: "users")
            print(users)
        }
    
}
        @IBOutlet weak var ingreso: UITextField!
        @IBAction func ingresa(_ sender: UIButton){
            
            if users.contains(self.ingreso.text!) {
                print("usuario registrado \(self.ingreso.text!)")
            }
            else{
               /* let alerta = UIAlertController(title: "No registrado",
                                              message: "Registrate",
                                              preferredStyle: UIAlertController.Style.actionSheet)
                let accion = UIAlertAction(title: "Cerrar",
                                           style: UIAlertAction.Style.default) { _ in
                                            alerta.dismiss(animated: true, completion: nil) };)
                alerta.addAction(accion)
                self.present(alerta, animated: true, completion: nil)*/
                print("no estas registrado")
            }
        }
    }

        
        //if users.contains(ingreso.text){
            
        //}else{
        //    print("registrate primero")
        //}
        


