//
//  dogumGunuViewController.swift
//  swiftDeneme1234
//
//  Created by Mehmet emin Kartal on 12/28/16.
//  Copyright © 2016 mehmet. All rights reserved.
//

import UIKit

class dogumGunuViewController: UIViewController {

	@IBOutlet weak var datePicker: UIDatePicker!
	@IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
		datePicker.locale = Locale(identifier: "tr");
		datePicker.maximumDate = Date();
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	@IBAction func degisti(_ sender: Any) {
		let dogumTarihi = datePicker.date;
		
		
		let form = DateComponentsFormatter()
		form.maximumUnitCount = 1
		form.unitsStyle = .full
		form.allowedUnits = [.year, .month, .day]
		let s = form.string(from: dogumTarihi, to: Date())!
		
		resultLabel.text = "Yaş: \(s)";
		
	}
}
