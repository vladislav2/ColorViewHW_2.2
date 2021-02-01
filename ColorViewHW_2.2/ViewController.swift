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
    changeBackgroundColorView(slider: nil)
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    colorsView.layer.cornerRadius = 16
  }

  @IBAction func sliderValueChanged(_ sender: UISlider) {
    changeBackgroundColorView(slider: sender)
  }
  
  private func changeBackgroundColorView(slider: UISlider?) {
    colorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    switch slider {
    case redSlider:
      redLabel.text = String(format: "%.2f", redSlider.value)
    case greenSlider:
      greenLabel.text = String(format: "%.2f", greenSlider.value)
    case blueSlider:
      blueLabel.text = String(format: "%.2f", blueSlider.value)
    default:
      redLabel.text = String(format: "%.2f", redSlider.value)
      greenLabel.text = String(format: "%.2f", greenSlider.value)
      blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
  }
}

