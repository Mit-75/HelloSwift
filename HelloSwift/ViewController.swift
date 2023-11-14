//
//  ViewController.swift
//  HelloSwift
//
//  Created by Dmitry Parhomenko on 14.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rectangleView: UIView!
    @IBOutlet weak var buttonView: UIButton!
    
    // MARK: - Properties
    private let colors: [UIColor] = [.blue, .green, .red]
    private var index = 0
    
    // MARK: - Lyfe cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupElements()
    }
    
    // MARK: - Private methods
    private func setupElements() {
        buttonView.layer.cornerRadius = 20
        rectangleView.layer.cornerRadius = 50
        imageView.isHidden = true
        rectangleView.backgroundColor = .clear
    }
    
    private func colorsChange() {
        if index < colors.count {
            rectangleView.backgroundColor = colors[index]
            index += 1
        } else {
            index = 0
        }
    }
    
    // MARK: - IBActions
    @IBAction func buttonTap() {
        labelView.text = "Happy New Year!"
        labelView.textColor = .green
        imageView.isHidden.toggle()
        colorsChange()
    }
}

