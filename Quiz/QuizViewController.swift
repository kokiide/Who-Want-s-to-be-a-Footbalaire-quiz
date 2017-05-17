//
//  QuizViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    //クイズを格納する配列
    var quizArray = [[Any]]()
    
    //正解数
    var correctAnswer:Int = 0
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons1: UIButton!
    @IBOutlet var choiceButtons2: UIButton!
    @IBOutlet var choiceButtons3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Swift3: [AnyObject]() -> [[Any]]() */
        var tmpArray = [[Any]]()
        
        //------------------------ここから下にクイズを書く------------------------//
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andrei Arshavin",3])
        tmpArray.append(["Which season did Arsenal earn the nickname of The Invincibles? Was it...","2003/2004","2005/2006","2001/2002",1])
        tmpArray.append(["Who is Chelsea's all time top goal scorer?","Frank Lampard","Didier Drogba","Arjen Robben",1])
        tmpArray.append(["How many points did Arsenal get during thier most succesful season 2003/04?","104","92","90",3])
        tmpArray.append(["How many points did Manchester United get during thier most succesful season 2003/04?","100","92","89",2])
        tmpArray.append(["How much did Manchester City pay on their record braking transfer fee signing Kevin De Bruyne?","£54M","£73","£80M",1])
        tmpArray.append(["How many goals did Tottenham's top scorer of the season Rafael van der Vaart score during 2010/11 season?","24","11","15",2])
        // had some troubles above
        tmpArray.append(["How many goals has Thierry Henry netted for Arsenal?(Loan move record not included)","226","267","290",1])
        tmpArray.append(["Is Thierry Henry the all time top goal scorer of Arsenal?","Yes, definately","No, there must be someone better","I have no idea...",1])
        tmpArray.append(["How many games did Thierry Henry play for Arsenal?(Loan move record not included)","386","442","369",3])
//10
        
        tmpArray.append(["How many goals did Thierry Henry score the most for Arsenal in one season?","37","33","non of the above",1])
        tmpArray.append(["Who is Manchester United's all time top goal scorer?","Wayne Rooney","Bobby Charlton","Cristiano Ronaldo",1])
        tmpArray.append(["How many goals did Wayne Rooney score for Everton?","5","10","15",3])
        tmpArray.append(["Wayne Rooney was how old on his first apearance in the Premier League","19","16","17",3])
        tmpArray.append(["How much did Chelsea pay for their record signing Fernando Torres?","£50m","£60","£70",1])
        tmpArray.append(["Andriy Shevchenko is a former...","Chelsea player","Aston Villa player","West Ham United player",1])
        tmpArray.append(["Liverpool's record transfer fee receival was accomplished by","Fernando Torres","Raheem Sterling","Luis Suárez",1])
        tmpArray.append(["Xabi Alonso is a former...","Chelsea player","West Ham United player","Liverpool player",3])
        tmpArray.append(["In which of the following did Michael Owen play for?","Stoke City","Leeds United","Nottingham Forest",1])
        tmpArray.append(["Premier league's all time record goal scorer is...","Alan Shearer","Robbie Fowler","Frank Lampard",1])
//20
        tmpArray.append(["How many goals did Garath Bale score during 2012/13 season","25","26","27",2])
        tmpArray.append(["Emmanuel Adebayor is from...","Cameroon","Togo","Ghana",2])
        tmpArray.append(["Jay Jay Okocha is from...","Nigeria","Mali","Ivory Coast",1])
        tmpArray.append(["Shinji Kagawa is from...","Japan","Taiwan","Korea",3])
        tmpArray.append(["Denis Bergkamp is from...","Belgum","Holland","Denmark",2])
        tmpArray.append(["How many games did Liverpool legend Steven Gerrard play for the club?","504","498","442",1])
        tmpArray.append(["How many goals did Matt Le Tissier score for Southampton","148","157","161",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
//30
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
//40
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])
        tmpArray.append(["Who scored a hat-trick during the 4-4 draw between Liverpool and Arsenal","Fernando Torres","Robin van Persie","Andre Arshavin",3])


        
        
        
        
        
        
        
        //------------------------ここから上にクイズを書く------------------------//
        
        // 問題をシャッフルしてquizArrayに格納する
        while (tmpArray.count > 0) {
            let index = Int(arc4random_uniform(UInt32(tmpArray.count)))
            quizArray.append(tmpArray[index])
            tmpArray.remove(at: index)
        }
        choiceQuiz()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as! String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, for: .normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, for: .normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray[0][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer+=1
        }
        
        quizArray.remove(at: 0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destination as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
    
    
    
}


