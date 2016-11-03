//
//  CollectionViewController.swift
//  VirtualTourist
//
//  Created by Caroline Davis on 2/11/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//


import UIKit
import CoreData

// MARK: - CoreDataTableViewController: UITableViewController

class CollectionViewController: CoreDataCollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the Stack
        let delegate = UIApplication.shared.delegate as! AppDelegate
        let stack = delegate.stack
        
        // Create the fetch request
        let fr = NSFetchRequest<NSFetchRequestResult>(entityName: "Photo")
        fr.sortDescriptors = [NSSortDescriptor(key: "image", ascending: true)]
        
        // Create the FetchedResultsController
        fetchedResultsController = NSFetchedResultsController(fetchRequest: fr, managedObjectContext: stack.context, sectionNameKeyPath: nil, cacheName: nil)
               
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // Find the photo
        let photo = fetchedResultsController!.object(at: indexPath as IndexPath) as! Photo
        
        // Create the Cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        
        // Sync photo to cell
       // cell from flickr api? or something.
        
        return cell
    }
    
   
    
}
