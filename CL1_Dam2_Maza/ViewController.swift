//
//  ViewController.swift
//  CL1_Dam2_Maza
//
//  Created by Maribel on 29/09/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblCliente: UITextField!
    @IBOutlet weak var lblDni: UITextField!
    @IBOutlet weak var lblServicio: UITextField!
    //
    @IBOutlet weak var lblCostoServicio: UILabel!
    @IBOutlet weak var lblCostoInstalacion: UILabel!
    @IBOutlet weak var lblCostoDescuento: UILabel!
    //
    
    @IBOutlet weak var lblCostoTotal: UILabel!
    @IBOutlet weak var imgServicio: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnCalcular(_ sender: UIButton) {
        var tf_Cliente:String, tf_Dni:String
        var tf_opcServicio:Int
        
        //opc
        var costo_serv:Double
        var costo_inst:Double
        var porcentaje_dsct:Double
        var costo_dsct:Double
        var costo_total:Double
        
        tf_opcServicio = Int(lblServicio.text ?? "0") ?? 0
        
        switch(tf_opcServicio){
        case 1:
            costo_serv=109.00
            costo_inst=35.00
            porcentaje_dsct=0.05
            costo_dsct=(costo_serv + costo_inst)*porcentaje_dsct
            costo_total=(costo_serv + costo_inst)-costo_dsct
            lblCostoTotal.text = String(costo_total)
            imgServicio.image = UIImage(named: "trio")

        default:
            lblCostoTotal.text = "no"
        }
        /*if(lblServicio = "1"){
            costo_serv = 109.00
            costo_inst = 35.00
            costo_dsct = 0.05
            lblCostoTotal = (costo_serv + costo_inst)*costo_dsct
            
        }else if(lblServicio = 2){
            costo_serv = 99.00
            costo_inst = 30.00
            costo_dsct = 0.04
        }else{
            costo_serv = 89.00
            costo_inst = 15.00
            costo_dsct = 0.02
            
        }*/
    }
}

