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
    @IBOutlet var questionNumber: UILabel!
    
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
        tmpArray.append(["Who is one of the most influential fooballer that even stoped the civil war?","Didier Drogba","Nwankwo Kanu","Yaya Toure",1])
        tmpArray.append(["Who was the Bolton captain in 2002/03 season that did enormouse contribution to take the club out of relegation","Jay Jay Okocha","Ricardo Gardner","Jussi Jääskeläinen",1])
        tmpArray.append(["Who is the shortest player that has ever played in the Premier League?","Ryan Fraser","N'golo Kante","Santi Cazorla",3])
//30
        tmpArray.append(["How many points clear was champions Leicester City from the runner up in season 2015/16","10. Clearly the champions","5. It was entertaining!","3! Oh, it was a close call",1])
        tmpArray.append(["Who was Leicester City's player of the year on 2016/17 season winning the league.","Jamie Vardy","N'golo Kante","Riyad Mahrez",3])
        tmpArray.append(["How many times did Aston Villa win the FA Cup","2","5","7",3])
        tmpArray.append(["In how many Premier Legue teams did Gareth Barry play for?","1","2","3",3])
        tmpArray.append(["Who remains top in Aston Villa's record signing list","Darren Bent","Steward Downing","Ashley Young",1])
        tmpArray.append(["Who is Everton's most expensive signing?","Romelu Lukaku","Marouane Fellaini","James McCarthy",1])
        tmpArray.append(["How is Southampton's first ever Japanese player","Maya Yoshida","Shinji Kagawa","Hidetoshi Nakata",1])
        tmpArray.append(["Is Franser Foster taller than Peter Crouch?","Yes, definately","No, Crouch is way taller","They are around the same...",3])
        tmpArray.append(["How many season's has West Brom spent in the Premier League","Over 10","Around 10","Around 5",2])
        tmpArray.append(["Asamoah Gyan is a former...","Sunderland player","Bolton player","Middlesbrough player",1])
//40
        tmpArray.append(["Bournmouth was promoted to the Premier League for being...","Champions of the Championship","Runners-up","Winning the Play-offs",1])
        tmpArray.append(["How many seasons did Dimitri Payet play for West Ham","Never","One and a half","Three",2])
        tmpArray.append(["Which of the following clubs did Ian Wright play for?","Crystal Palace","Stoke City","Burnley",1])
        tmpArray.append(["How many times has Stoke City played in the Europa League","Never yet","Once","Twice",2])
        tmpArray.append(["How many times has Burnley won the FA Cup","Never yet","Once","Twice",2])
        tmpArray.append(["David James started off his career at","Watford","Portsmouth","Tottenham",1])
        tmpArray.append(["How many times has Watford won the FA Cup","Never yet.","Once","Twice",1])
        tmpArray.append(["How well did Swansea do in the Europa League during season 2013/14","Made it to play-off round","Made it to Group Stage","Made it to the Round of 32",3])
        tmpArray.append(["Where did Hull City's best FA Cup round end?","Round of 16","Semi-finals","Runner-up",3])
        tmpArray.append(["Jimmy Bullard did the famous goal celebration against Man City for what club?","Fulham","Hull City","Wigan",2])


        
        
        
        
        
        
        
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


