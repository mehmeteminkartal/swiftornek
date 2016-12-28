//
//  FinalSonucViewController.swift
//  swiftDeneme1234
//
//  Created by Mehmet emin Kartal on 12/28/16.
//  Copyright © 2016 mehmet. All rights reserved.
//

import UIKit
import AVFoundation

class FinalSonucViewController: UIViewController {
	
	@IBOutlet weak var isimLable: UILabel!
	@IBOutlet weak var notLabel: UILabel!
	@IBOutlet weak var sonucImage: UIImageView!
	
	var isim = "";
	var not = 0;
	var player: AVAudioPlayer!;
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		isimLable.text = isim;
		
		if not > 50 {
			self.view.backgroundColor = .green
			notLabel.text = "Not: \(not). Geçtiniz!";
			sonucImage.image = UIImage(named: "ok", in: nil, compatibleWith: nil);
			let file = Bundle.main.path(forResource: "clap", ofType: "mp3")!
			let fileURL = URL(fileURLWithPath: file)
			do {
				player = try AVAudioPlayer(contentsOf: fileURL)
				player.prepareToPlay()
				player.play();
			} catch {
				print("Hata: \(error.localizedDescription)");
			}
		} else {
			self.view.backgroundColor = .red
			notLabel.text = "Not: \(not). Kaldınız!";
			sonucImage.image = #imageLiteral(resourceName: "fail")
		}
		
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	// Get the new view controller using segue.destinationViewController.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
