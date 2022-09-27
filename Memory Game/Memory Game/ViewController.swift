//
//  ViewController.swift
//  Memory Game
//
//  Created by Muharrem Köroğlu on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    @IBOutlet weak var logo1: UIImageView!
    @IBOutlet weak var logo2: UIImageView!
    @IBOutlet weak var logo3: UIImageView!
    @IBOutlet weak var logo4: UIImageView!
    @IBOutlet weak var logo5: UIImageView!
    @IBOutlet weak var logo6: UIImageView!
    @IBOutlet weak var logo7: UIImageView!
    @IBOutlet weak var logo8: UIImageView!
    @IBOutlet weak var logo9: UIImageView!
    @IBOutlet weak var logo10: UIImageView!
    @IBOutlet weak var logo11: UIImageView!
    @IBOutlet weak var logo12: UIImageView!
    

    var timer = Timer()
    var hideCancelTimer = Timer()
    var logoArray = [UIImageView]()
    var logoChanger = true
    var clueChanger = true
    var count = 25
    var score = 0
    var highScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedHighScore = UserDefaults.standard.object(forKey: "storedhighscore")
        
        if storedHighScore == nil {
            highScore = 0
            highScoreLabel.text = "HighScore: \(highScore)"
        }
        
        if let lastHighScore = storedHighScore as? Int {
            highScore = lastHighScore
            highScoreLabel.text = "HighScore: \(highScore)"
        }
        
        scoreLabel.text = "Score: \(score)"
        
        timerLabel.text = String(count)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideCancelTimer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(logoHide), userInfo: nil, repeats: true)
        
        logoArray = [logo1,logo2,logo3,logo4,logo5,logo6,logo7,logo8,logo9,logo10,logo11,logo12]
        
        for logo in logoArray {
            logo.isHighlighted = true
        }
        
        
        logo1.isUserInteractionEnabled = true
        logo2.isUserInteractionEnabled = true
        logo3.isUserInteractionEnabled = true
        logo4.isUserInteractionEnabled = true
        logo5.isUserInteractionEnabled = true
        logo6.isUserInteractionEnabled = true
        logo7.isUserInteractionEnabled = true
        logo8.isUserInteractionEnabled = true
        logo9.isUserInteractionEnabled = true
        logo10.isUserInteractionEnabled = true
        logo11.isUserInteractionEnabled = true
        logo12.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(logo1Func))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(logo2Func))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(logo3Func))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(logo4Func))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(logo5Func))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(logo6Func))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(logo7Func))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(logo8Func))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(logo9Func))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(logo10Func))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(logo11Func))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(logo12Func))
        
        logo1.addGestureRecognizer(recognizer1)
        logo2.addGestureRecognizer(recognizer2)
        logo3.addGestureRecognizer(recognizer3)
        logo4.addGestureRecognizer(recognizer4)
        logo5.addGestureRecognizer(recognizer5)
        logo6.addGestureRecognizer(recognizer6)
        logo7.addGestureRecognizer(recognizer7)
        logo8.addGestureRecognizer(recognizer8)
        logo9.addGestureRecognizer(recognizer9)
        logo10.addGestureRecognizer(recognizer10)
        logo11.addGestureRecognizer(recognizer11)
        logo12.addGestureRecognizer(recognizer12)

    }
    @objc func logoHide (){
        for hide in logoArray {
            hide.isHighlighted = true
        }
    }
    
    
    @IBAction @objc func clueButton(_ sender: Any) {
        
        if clueChanger == true{
            
            for clue in logoArray {
                clue.isHighlighted = false
            }
            clueChanger = false
        }
        
    }
    
    
    @objc func logo1Func(){
        if logoChanger == true {
            logo1.isHighlighted = false
            if logo1.isHighlighted == false && logo8.isHighlighted == false {
                logo1.isHidden = true
                logo8.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }

    }
    
    @objc func logo2Func(){
        if logoChanger == true {
            logo2.isHighlighted = false
            if logo2.isHighlighted == false && logo9.isHighlighted == false {
                logo2.isHidden = true
                logo9.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }
    }
    
    @objc func logo3Func(){
        if logoChanger == true {
            logo3.isHighlighted = false
            if logo3.isHighlighted == false && logo12.isHighlighted == false {
                logo3.isHidden = true
                logo12.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }

    }
    @objc func logo4Func(){
        if logoChanger == true {
            logo4.isHighlighted = false
            if logo4.isHighlighted == false && logo11.isHighlighted == false {
                logo4.isHidden = true
                logo11.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }
    
    }
    @objc func logo5Func(){
        if logoChanger == true {
            logo5.isHighlighted = false
            if logo5.isHighlighted == false && logo10.isHighlighted == false {
                logo5.isHidden = true
                logo10.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }
    }
    @objc func logo6Func(){
        if logoChanger == true {
            logo6.isHighlighted = false
            if logo6.isHighlighted == false && logo7.isHighlighted == false {
                logo6.isHidden = true
                logo7.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }

    }
    @objc func logo7Func(){
        if logoChanger == true {
            logo7.isHighlighted = false
            if logo7.isHighlighted == false && logo6.isHighlighted == false {
                logo7.isHidden = true
                logo6.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
                
            }
        }
    }
    @objc func logo8Func () {
        
        if logoChanger == true{
            logo8.isHighlighted = false
            if logo8.isHighlighted == false && logo1.isHighlighted == false {
                logo8.isHidden = true
                logo1.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    @objc func logo9Func () {
        
        if logoChanger == true{
            logo9.isHighlighted = false
            if logo9.isHighlighted == false && logo2.isHighlighted == false {
                logo9.isHidden = true
                logo2.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    @objc func logo10Func () {
        
        if logoChanger == true{
            logo10.isHighlighted = false
            if logo10.isHighlighted == false && logo5.isHighlighted == false {
                logo10.isHidden = true
                logo5.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    @objc func logo11Func () {
        
        if logoChanger == true{
            logo11.isHighlighted = false
            if logo11.isHighlighted == false && logo4.isHighlighted == false {
                logo11.isHidden = true
                logo4.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    @objc func logo12Func () {
        
        if logoChanger == true{
            logo12.isHighlighted = false
            if logo12.isHighlighted == false && logo3.isHighlighted == false {
                logo12.isHidden = true
                logo3.isHidden = true
                score += 20
                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    
    
    
    @objc func countDown () {
        count -= 1
        timerLabel.text = String(count)
        
        
        if count == 0 {
            timer.invalidate()
            
            if self.score > self.highScore {
                highScore = score
                highScoreLabel.text = "HighScore: \(highScore)"
                UserDefaults.standard.set(highScore, forKey: "storedhighscore")
            }
            
            for refreshLogo in logoArray {
                refreshLogo.isHidden = false
                refreshLogo.isHighlighted = true
            }
            
            let alert = UIAlertController(title: "Time's Up!", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            let noButton = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel)
            let yesButton = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default) { UIAlertAction in
                self.count = 25
                self.timerLabel.text = "\(self.count)"
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.clueChanger = true
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)

            }
            alert.addAction(noButton)
            alert.addAction(yesButton)
            self.present(alert, animated: true)
            
        }
        
    }


}

