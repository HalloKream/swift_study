//
//  SymbolRollerViewController.swift
//  testIOS
//
//  Created by Jose on 12/17/23.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min","moon","cloud","wind","snowflake"]
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var UILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TO-DO:
        // - 심볼에서, 하나를 임의로 추출해서, 이미지와 텍스트를 설정한다
        reload()
        // Do any additional setup after loading the view.
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageview.image  = UIImage(systemName:symbol)
        UILabel.text = symbol
    }
    
    @IBAction func buttontapped(_ sender: Any) {
        print("와 눌렷다")
        reload()
    }
    
    
    // viewWillAppear - 보여질에정, viewDidAppear - 보여짐
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
