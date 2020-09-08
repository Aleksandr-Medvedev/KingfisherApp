//
//  ViewController.swift
//  Kingfisher
//
//  Created by Aleksandr Medvedev on 9/8/20.
//

import Kingfisher
import UIKit

class ViewController: UIViewController {

    var step: Int = 0
    private let imageAddresses: [URL] = [
        URL(string: "https://i.imgur.com/PXODH2A.jpg"),
        URL(string: "https://i.imgur.com/u0gDq7R.jpg"),
        URL(string: "https://i.imgur.com/kvG99zj.jpg"),
        URL(string: "https://i.imgur.com/1LMAzy1.jpg"),
        URL(string: "https://i.imgur.com/HnnEksE.jpg"),
        URL(string: "https://i.imgur.com/jtpD8Dt.jpeg"),
        URL(string: "https://i.imgur.com/ukS46dR.png"),
        URL(string: "https://i.imgur.com/szkCIZR.jpeg"),
        URL(string: "https://i.imgur.com/V2P11Mt.jpeg"),
        URL(string: "https://i.imgur.com/1HL7WHb.jpeg"),
        URL(string: "https://i.imgur.com/y4DT6Pt.jpeg"),
        URL(string: "https://i.imgur.com/fISd3l6.jpeg"),
        URL(string: "https://i.imgur.com/hr1rQxY.jpeg"),
        URL(string: "https://i.imgur.com/ky5TQ2A.jpeg"),
        URL(string: "https://i.imgur.com/vV4jZmz.jpeg"),
        URL(string: "https://i.imgur.com/D9wR561.jpeg"),
        URL(string: "https://i.imgur.com/UEuu3qE.jpeg"),
        URL(string: "https://i.imgur.com/cTBUUFb.jpeg"),
        URL(string: "https://i.imgur.com/IMyDLM3.jpeg"),
        URL(string: "https://i.imgur.com/2kMFKQQ.jpg"),
        URL(string: "https://i.imgur.com/jUIlZRT.png"),
        URL(string: "https://i.imgur.com/vUCCuzh.jpg"),
        URL(string: "https://i.imgur.com/fetJMuI.png"),
        URL(string: "https://i.imgur.com/wjW5cFq.jpg"),
        URL(string: "https://i.imgur.com/WACsdwA.jpg"),
        URL(string: "https://i.imgur.com/fyftvOu.jpg"),
        URL(string: "https://i.imgur.com/yub1yGM.jpg"),
        URL(string: "https://i.imgur.com/4KheKM6.jpg"),
        URL(string: "https://i.imgur.com/BLcPti4.jpg"),
        URL(string: "https://i.imgur.com/z56mCf4.png"),
        URL(string: "https://i.imgur.com/qSHmCku.jpg"),
        URL(string: "https://i.imgur.com/l8Fu7H2.png"),
        URL(string: "https://i.imgur.com/VqyIrQp.jpg"),
        URL(string: "https://i.imgur.com/2HKLG2A.png"),
        URL(string: "https://i.imgur.com/xZBPkTm.png"),
        URL(string: "https://i.imgur.com/JFT20XU.jpg"),
        URL(string: "https://i.imgur.com/2mdhOWb.jpg"),
        URL(string: "https://i.imgur.com/Whi8gha.jpg"),
        URL(string: "https://i.imgur.com/Evjkp0V.jpg"),
        URL(string: "https://i.imgur.com/WjVCp3o.png"),
        URL(string: "https://i.imgur.com/44ROlEd.png"),
        URL(string: "https://i.imgur.com/2NRppSN.png"),
        URL(string: "https://i.imgur.com/4wum3YG.png"),
        URL(string: "https://i.imgur.com/nnwPjiw.png"),
        URL(string: "https://i.imgur.com/8ICd5QN.png"),
        URL(string: "https://i.imgur.com/T3J7lJD.jpg"),
        URL(string: "https://i.imgur.com/p2jKRCC.jpg")
    ].compactMap { $0 }

    @IBOutlet var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadImages()
        title = "\(step)"
    }

    @IBAction func pushNext(_ sender: UIBarButtonItem) {
        let newController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewCon") as! ViewController
        newController.step = step + 1
        navigationController?.pushViewController(newController, animated: true)
    }

    // MARK: Private

    private func loadImages() {
        var i = 1
        while let imageView = stackView.viewWithTag(i) as? UIImageView {
            let imageAddressIndex = Int.random(in: 0 ..< imageAddresses.count)
            imageView.contentMode = .scaleAspectFill
            imageView.kf.setImage(with: imageAddresses[imageAddressIndex], placeholder: nil, options: [
                .scaleFactor(UIScreen.main.scale),
                .processor(ResizingImageProcessor(referenceSize: imageView.bounds.size, mode: .aspectFill))
            ])
            i += 1
        }

    }

}
