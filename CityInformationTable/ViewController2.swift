//
//  ViewController2.swift
//  SehirTanitimKitabi
//
//  Created by Oğulcan DEMİRTAŞ on 4.08.2021.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirIsim: UILabel!
    @IBOutlet weak var bolgeIsim: UILabel!
    
    var secilenSehir : Sehir?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirIsim.text = secilenSehir?.isim
        bolgeIsim.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
        
    }
    

    
}
