# Emoji-Library

This is a sample app to practice `Old School` Collection View, getting data from [study materials](https://www.kodeco.com/5429927-collection-views)

Along the way, I learend how to 
1. Add custom headers to collection views
2. Implement a single cell selection to bring up a detail view
3. Implement multi-cell selection.

### How to run

```
> cd EmojiLibrary
> open EmojiLibrary.xcodeproj
```

### App Features

A simple `UICollectionView` with cells and detailView.

`UICollectionView` is where the content is displayed. Like a table view, a collection view is a UIScrollView subclass.

<img src="https://user-images.githubusercontent.com/111719007/215240028-8190fec4-e6a5-4fe5-92dd-4d5b2c6d7bb8.gif" width="200" height="400"/>

### Flow Layout

Flow-based layout is called UICollectionViewFlowLayout. 
Elements lay out one after another based on their size, like a grid view. 

You can use this layout class out of the box or subclass it to get some interesting behavior and visual effects.

`Scroll Direction` is left to right (default) by edge, then vertically

<img width="200" alt="Flow LayOut" src="https://user-images.githubusercontent.com/111719007/215241596-76d749ef-96ed-4dff-b4d7-01d667bb3f55.png">

Identify Number of items in Section, and use `dequeReusableCell` for showing.

If trying to identify single item by single cell, then UI might freeze up.
        
```Swift
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let emojiCell = 
        collectionView.dequeueReusableCell(withReuseIdentifier: EmojiCell.reuseIdentifier, for: indexPath) as? EmojiCell
        else { fatalError("Cell cannot be created") }
}
```

### View Delegate

When editing to add or delete emoji, I must get emoji from the data source first.

before I call the insert or delete method, the fatal error must be occured
The order is important.

```Swift
collectionView.indexPathsForVisibleItems.forEach {
    // get emoji from the data source
    guard let emojiCell = collectionView.cellForItem(at: $0) as? EmojiCell else { return }
    // then do something...
    emojiCell.isEditing = editing
}
```

### Supplementary View

Use supplementary views when you have extra information to display that should be in the collection view but not in the cells.

I used UICollectionReusableView for header

```Swift
class EmojiHeaderView: UICollectionReusableView {
    static let reuseIdentifier = String(describing: EmojiHeaderView.self)
    @IBOutlet var textLabel: UILabel!
}
```



