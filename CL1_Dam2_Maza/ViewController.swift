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
    
    @IBOutlet weak var lblMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgServicio.image = UIImage(named: "default")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnCalcular(_ sender: UIButton) {
        var tf_Cliente:String, tf_Dni:String
        var tf_opcServicio:Int
        
        //opc
        var costo_serv:Double = 0.00
        var costo_inst:Double = 0.00
        var porcentaje_dsct:Double = 0.00
        var costo_dsct:Double
        var costo_total:Double
        var foto:String = " "
       
        tf_Cliente = lblCliente.text ?? " "
        tf_Dni = lblDni.text ?? " "
        tf_opcServicio = Int(lblServicio.text ?? "0") ?? 0
       
        var datosPers:Bool = false
        if(tf_Cliente != " " && tf_Cliente.count > 2 && tf_Dni != " " && tf_Dni.count == 8  ) { datosPers = true}
    
        
        switch(tf_opcServicio){
        case 1:
            costo_serv=109.00
            costo_inst=35.00
            porcentaje_dsct=0.05
            foto="trio"
        case 2:
            costo_serv=99.00
            costo_inst=30.00
            porcentaje_dsct=0.04
            foto="duo"
        case 3:
            costo_serv=89.00
            costo_inst=15.00
            porcentaje_dsct=0.02
            foto="internet"
        case 4:
            costo_serv=59.00
            costo_inst=12.00
            porcentaje_dsct=0.01
            foto="telefono"
        case 5:
            costo_serv=79.00
            costo_inst=15.00
            porcentaje_dsct=0.01
            foto="cable"
        default:
            foto="default"
        }

        if(datosPers == false){
            lblCostoServicio.text = "0.00"
            lblCostoInstalacion.text = "0.00"
            lblCostoDescuento.text = "0.00"
            lblCostoTotal.text = "-"
            lblMensaje.text="Colocar sus datos personales!"
          return
        }
        if(tf_opcServicio < 1 || tf_opcServicio > 5){
            lblMensaje.text = "Ingrese una opcion de servicio"
            return
        }
        costo_dsct=(costo_serv + costo_inst)*porcentaje_dsct
        costo_total=(costo_serv + costo_inst)-costo_dsct
        lblCostoServicio.text = String(costo_serv)
        lblCostoInstalacion.text = String(costo_inst)
        lblCostoDescuento.text = String(porcentaje_dsct)
        lblCostoTotal.text = String(costo_total)
        lblMensaje.text = " "
        imgServicio.image = UIImage(named: foto)
    }
}

