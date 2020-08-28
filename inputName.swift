//
//  inputName.swift
//  FlourishedName
//
//  Created by Liza Babaoglu on 2020-08-12.
//  Copyright © 2020 Liza Babaoglu. All rights reserved.
//

import UIKit

var setWord: Int = 0

class inputName: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    var myFirstLabel: UILabel!
    var letterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gonext(_ sender: UIButton) {
    }

    @IBAction func gohome(_ sender: UIButton) {
    }
    
    @IBAction func startover(_ sender: UIButton) {
        loadView()
    }
    
    @IBAction func purple(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.cyan
    }
    
    @IBAction func inputting(_ nameTextField: UITextField) {
    
        let alphabet: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZՀՈԳԻՍԼԶԱ" //ԱԲԳԴԵԶԷԸԹԺԻԼԽԾԿՀՁՂՃՄՅՆՇՈՉՊՋ
        var set: [[String]] = [["Adventurous"]]//...not showing in the video
        
        
        var letterIndex: Int = 0
        var position: Int = 0
        //var setWord: Int = 0
        var used : String = ""
        
        nameTextField.text! = nameTextField.text!.uppercased()

        for char in nameTextField.text!{
            letterIndex = 0
            if used.contains(char){
                setWord += 1
                if setWord > 4 { //0 1 2 3 4 indexes
                    setWord = 0
                }
            }
            for letter in alphabet{
                if char == letter{
                    myFirstLabel = UILabel()
                    letterLabel = UILabel()
                    letterLabel.text = "\(char)" //acts like string
                    myFirstLabel.text = ": \(set[letterIndex][setWord])" //very very low chance of getting the same word for the same letter
                    letterLabel.font = UIFont.systemFont(ofSize: 20)
                    myFirstLabel.font = UIFont.systemFont(ofSize: 20)
                    letterLabel.center = CGPoint(x:60, y:90+position)
                    myFirstLabel.center = CGPoint(x:80, y:90+position)
                    myFirstLabel.textAlignment = .left
                    letterLabel.sizeToFit()
                    myFirstLabel.sizeToFit() //order matters
                    view.addSubview(letterLabel)
                    view.addSubview(myFirstLabel)
                    used.append(letter)
                    //print(used)
                    break
                }else{
                    letterIndex += 1
                }
            }
            position = position + 22 //remove hard coding: make 100 based on the total number of characters and the spce you have
        }

    }
}

