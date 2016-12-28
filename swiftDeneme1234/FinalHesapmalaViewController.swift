//
//  FinalHesapmalaViewController.swift
//  swiftDeneme1234
//
//  Created by Mehmet emin Kartal on 12/28/16.
//  Copyright © 2016 mehmet. All rights reserved.
//

import UIKit

class FinalHesapmalaViewController: UIViewController {

	
	@IBOutlet weak var isimField: UITextField!
	@IBOutlet weak var vizeNotuField: UITextField!
	@IBOutlet weak var finalNotuField: UITextField!
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if let gidilecekView = segue.destination as? FinalSonucViewController {
			let vizeNotu = Int(vizeNotuField.text!)!;
			let finalNotu = Int(finalNotuField.text!)!;
			
			let ortalama = (vizeNotu + finalNotu) / 2;
			
			print("Ortalama: \(ortalama)");
			
			gidilecekView.isim = isimField.text!;
			gidilecekView.not = ortalama;
		}
		
	}

}
