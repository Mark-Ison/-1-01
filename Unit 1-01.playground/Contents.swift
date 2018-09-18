// Created on: Sept-2018
// Created by: Mark Ison
// Created for: ICS3U
// This program is the UIKit solution for School Team Names
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let schoolnameLabel: UILabel = UILabel()
    let teamnameLabel = UILabel()
    let mtButton = UIButton()
    let stjoeButton = UIButton()
    let stmarkButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        mtButton.setTitle("Mother Teresa HS", for: UIControlState.normal)
        mtButton.setTitleColor(.blue, for: .normal)
        mtButton.addTarget(self, action: #selector(mtText), for: .touchUpInside)
        view.addSubview(mtButton)
        mtButton.translatesAutoresizingMaskIntoConstraints = false
        mtButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        mtButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stjoeButton.setTitle("St Joe's HS", for: .normal)
        stjoeButton.setTitleColor(.blue, for: .normal)
        stjoeButton.addTarget(self, action: #selector(stjoeText), for: .touchUpInside)
        view.addSubview(stjoeButton)
        stjoeButton.translatesAutoresizingMaskIntoConstraints = false
        stjoeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stjoeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stmarkButton.setTitle("St Mark's Hs", for: .normal)
        stmarkButton.setTitleColor(.blue, for: .normal)
        stmarkButton.addTarget(self, action: #selector(stmarkText), for: .touchUpInside)
        view.addSubview(stmarkButton)
        stmarkButton.translatesAutoresizingMaskIntoConstraints = false
        stmarkButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        stmarkButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        schoolnameLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(schoolnameLabel)
        schoolnameLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolnameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        schoolnameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        
        teamnameLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(teamnameLabel)
        teamnameLabel.translatesAutoresizingMaskIntoConstraints = false
        teamnameLabel.topAnchor.constraint(equalTo: schoolnameLabel.bottomAnchor, constant: 20).isActive = true
        teamnameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        
    }
    
    @objc func mtText() {
        schoolnameLabel.text = "Mother Teresa High School"
        teamnameLabel.text = "Titans"
    }
    
    @objc func stjoeText() {
        schoolnameLabel.text = "St Joe's High School"
        teamnameLabel.text = "Jaguars"
    }
    
    @objc func stmarkText() {
        schoolnameLabel.text = "St Mark's High School"
        teamnameLabel.text = "Lions"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

