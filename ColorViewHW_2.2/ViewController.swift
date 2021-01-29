//
//  ViewController.swift
//  ColorViewHW_2.2
//
//  Created by user on 29.01.2021.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var colorsView: UIView!
  
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var blueLabel: UILabel!
  
  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    changeBackgroundColorView()
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    colorsView.layer.cornerRadius = 16
  }
  

  @IBAction func sliderValueChanged(_ sender: UISlider) {
    changeBackgroundColorView()
  }
  
  private func changeBackgroundColorView() {
    colorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    redLabel.text = String(format: "%.2f", redSlider.value)
    greenLabel.text = String(format: "%.2f", greenSlider.value)
    blueLabel.text = String(format: "%.2f", blueSlider.value)
  }
  
}

