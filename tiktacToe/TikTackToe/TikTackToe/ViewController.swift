
import UIKit
import ComputeWin
import Lottie
class ViewController: UIViewController {
    
    @IBOutlet weak var index1: UIButton!
    @IBOutlet weak var index2: UIButton!
    @IBOutlet weak var index3: UIButton!
    @IBOutlet weak var index4: UIButton!
    @IBOutlet weak var index5: UIButton!
    @IBOutlet weak var index6: UIButton!
    @IBOutlet weak var index7: UIButton!
    @IBOutlet weak var index8: UIButton!
    @IBOutlet weak var index9: UIButton!
    @IBOutlet weak var playerTurn: UILabel!
    @IBOutlet weak var animationSeperateView: UIView!
    
    var valueArray : [[Int]] = [[-1,-1,-1], [-1,-1,-1], [-1,-1,-1]]
    var player : Bool = true
    let animationView = LOTAnimationView(name: "win")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerTurn.text = "Player 1 turn"
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        animationSeperateView.isHidden = true
    }
    
    func isWin() -> Bool {
        var p : Int
        if(player){
            p = 1
        } else {
            p = 0
        }
        if(IsWin.horizontalWin(valueArray: valueArray, playerValue: p) || IsWin.verticalWin(valueArray: valueArray, PlayerValue: p) || IsWin.diagonalOneWin(valueArray: valueArray, playerValue: p) || IsWin.diagonaltwosWin(valueArray: valueArray, playerValue: p)){
            return true
        } else {
            return false
        }
        
    }
    func isGameOver() -> Bool {
        for arr in valueArray{
            for n in arr{
                if(n == -1){
                    return false
                }
            }
        }
        return true
    }
    
    func playAnimation(){
        animationView.frame = CGRect(x: 0, y: 0, width: 500, height: 600)
        animationView.center = self.animationSeperateView.center
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        animationSeperateView.addSubview(animationView)
        animationView.play()
    }
    @IBAction func SelectIndexButton(_ sender: UIButton) {
        switch sender {
        case index1:
            if(player){
                index1.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[0][0] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index1.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[0][0] = 0
                playerTurn.text = "Player 1 turn"
            }
            index1.isEnabled = false
            break
        case index2:
            if(player){
                index2.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[0][1] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index2.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[0][1] = 0
                playerTurn.text = "Player 1 turn"
            }
            index2.isEnabled = false
            break
        case index3:
            if(player){
                index3.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[0][2] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index3.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[0][2] = 0
                playerTurn.text = "Player 1 turn"
            }
            index3.isEnabled = false
            break
        case index4:
            if(player){
                index4.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[1][0] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index4.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[1][0] = 0
                playerTurn.text = "Player 1 turn"
            }
            index4.isEnabled = false
            break
        case index5:
            if(player){
                index5.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[1][1] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index5.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[1][1] = 0
                playerTurn.text = "Player 1 turn"
            }
            index5.isEnabled = false
            break
        case index6:
            if(player){
                index6.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[1][2] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index6.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[1][2] = 0
                playerTurn.text = "Player 1 turn"
            }
            index6.isEnabled = false
            break
        case index7:
            if(player){
                index7.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[2][0] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index7.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[2][0] = 0
                playerTurn.text = "Player 1 turn"
            }
            index7.isEnabled = false
            break
        case index8:
            if(player){
                index8.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[2][1] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index8.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[2][1] = 0
                playerTurn.text = "Player 1 turn"
            }
            index8.isEnabled = false
            break
        case index9:
            if(player){
                index9.setImage(UIImage(named: "cross2"), for: .normal)
                valueArray[2][2] = 1
                playerTurn.text = "Player 2 turn"
            } else {
                index9.setImage(UIImage(named: "circle2"), for: .normal)
                valueArray[2][2] = 0
                playerTurn.text = "Player 1 turn"
            }
            index9.isEnabled = false
            break
        default:
            break
        }
        if(isWin()){
            var p : Int
            if(player){
                p = 1
            } else {
                p = 0
            }
            playerTurn.text = "Hey..! Player \(p) won the game"
            animationSeperateView.isHidden = false
            playAnimation()
            index1.isEnabled = false
            index2.isEnabled = false
            index3.isEnabled = false
            index4.isEnabled = false
            index5.isEnabled = false
            index6.isEnabled = false
            index7.isEnabled = false
            index8.isEnabled = false
            index9.isEnabled = false
        } else {
            if(isGameOver()){
                playerTurn.text = "Hey..!  Game is OVER"
            } else {
                player = !player
            }
        }
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        animationView.stop()
        animationSeperateView.isHidden = true
        valueArray = [[-1,-1,-1],[-1,-1,-1],[-1,-1,-1]]
        index1.isEnabled = true
        index1.setImage(nil, for: .normal)
        index2.isEnabled = true
        index2.setImage(nil, for: .normal)
        index3.isEnabled = true
        index3.setImage(nil, for: .normal)
        index4.isEnabled = true
        index4.setImage(nil, for: .normal)
        index5.isEnabled = true
        index5.setImage(nil, for: .normal)
        index6.isEnabled = true
        index6.setImage(nil, for: .normal)
        index7.isEnabled = true
        index7.setImage(nil, for: .normal)
        index8.isEnabled = true
        index8.setImage(nil, for: .normal)
        index9.isEnabled = true
        index9.setImage(nil, for: .normal)
    }
    
}

