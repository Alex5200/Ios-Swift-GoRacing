
import UIKit

private let reuseIdentifier = "Cell"

var userCarImage: String = "ic_sedan_blue"

class ChangeCarCollectionViewController: UICollectionViewController {
    
    let cars = ["ic_sedan_blue", "is_sedan_purple", "is_sedan_red", "is_sport_car"]

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    as! ChangeCarCollectionViewCell
        let imageName = cars[indexPath.item]
        let image = UIImage (named: imageName)
        cell.carPicture.image = image

        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        userCarImage = cars [indexPath.item]
        let alert = UIAlertController(title: "Car change", message: "Car changed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        return true
        }
    }

