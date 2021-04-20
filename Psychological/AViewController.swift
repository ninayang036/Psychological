//
//  AViewController.swift
//  Psychological
//
//  Created by Yang Nina on 2021/4/19.
//

import UIKit

class AViewController: UIViewController {
    var resultNum = 0
    init?(coder: NSCoder, resultNum: Int) {
        super.init(coder: coder)
        self.resultNum = resultNum
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBOutlet weak var princessImg: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var describeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView()
        // Do any additional setup after loading the view.
    }
    func resultView(){
        switch resultNum{
        case 21:
            princessImg.image = UIImage(named: "Ariel")
            titleLabel.text = answers[0].title
            describeLabel.text = answers[0].description
        case 22:
            princessImg.image = UIImage(named: "Jasmine")
            titleLabel.text = answers[1].title
            describeLabel.text = answers[1].description
        case 23:
            princessImg.image = UIImage(named: "Belle")
            titleLabel.text = answers[2].title
            describeLabel.text = answers[2].description
        case 24:
            princessImg.image = UIImage(named: "Aurore")
            titleLabel.text = answers[3].title
            describeLabel.text = answers[3].description
        case 25:
            princessImg.image = UIImage(named: "Rapunzel")
            titleLabel.text = answers[4].title
            describeLabel.text = answers[4].description
        case 26:
            princessImg.image = UIImage(named: "Snow")
            titleLabel.text = answers[5].title
            describeLabel.text = answers[5].description
        case 27:
            princessImg.image = UIImage(named: "Cinderella")
            titleLabel.text = answers[6].title
            describeLabel.text = answers[6].description
        default:
            break
        }
    }

   
    @IBAction func returnone(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
