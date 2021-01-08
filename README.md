[<img src="/LearnSwiftUI/Assets.xcassets/AppIcon.appiconset/120.png"/>](120.png)
# SwiftUI
LEARN 📝 | Simple examples of how to use SwiftUI
```Swift
import SwiftUI

struct ContentView: View {
    var body: some View {
    
    //here is your code to build the view 

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
```

# 

###  ``` .onAppear() ```
Same as ViewDidLoad()

###  ```NavigationView```, ```List```, ```NavigationLink```
A simple away to create table views
```
let listDataModel = [DataModel]()
 NavigationView{
 
            //create the tableView
            List(listDataModel){ d in
                
                //When table view cell is clicked
                NavigationLink(
                    destination: DetailView()){
                    HStack{
                        Text(d.attribute)
                    }
                }
                
                
            }
            .navigationTitle("Hack News") //here
        }
        

```
### ```struct DataModel: Identifiable ```
Allows to identify each row of the list as unique. The struct need to have ```var id:Int```

###  ``` @ObservedObject  var ``` and ```ObservableObject``` protocol

its a better delegate
``` 
struct Sender: ObservableObject{
  @Published var message
}

struct Receiver{
  @ObservedObject var recipient = Sender()
  
}

```


### ``` @State var ```
refactor the view when is changed


###  ``` Spacer() ```
Create space between elements

#### ``` .padding(.horizontal, 5) ```
Same as storyboard constraints

### StackViews
##### ```HStack{} ```
Allow to put the elements in horizontal alignment 
##### ```VStack{} ```
Allow to put the elements in vertical alignment
##### ```ZStack{} ```
Allow to overlap the elements



### Background 
##### Set Color: ``` Color(UIColor(red: 0.87, green: 0.60, blue: 0.40, alpha: 1.00)).edgesIgnoringSafeArea(.all)``` 
##### Set Image: ``` Image(imageName).resizable().edgesIgnoringSafeArea(.all)``` 

###### 🤯 Tip: The easiest way to work with Color is using Color(COLOR LITERAL)

### Button
```
Button(action: {
    //Action
  }, label: {
  
  //Label Content
  Text("Rool").font(.system(size: 50)).foregroundColor(.white).padding(.horizontal) 
  
 }).background(Color(#colorLiteral(red: 0.6097301841, green: 0.1105430648, blue: 0.1225960776, alpha: 1)))
```

### Images
``` Image("") ```
##### SF Symbols: ``` Image(systemName: imageName).foregroundColor(Color(UIColor(red: 0.56, green: 0.22, blue: 0.30, alpha: 1.00))) ```
##### Aspect Ratio: ``` Image(imageName).resizable().aspectRatio(1,contentMode: .fit) ```
##### Resize: ``` Image(imageName).resizable().frame(width: 150, height: 150) ```
##### Change Shape: ``` Image(imageName).resizable().clipShape(Circle()) ```
##### Overlay: ```  Image(imageName)overlay(Circle().stroke(Color(UIColor(red: 0.36, green: 0.43, blue: 0.57, alpha: 1.00)),lineWidth: 5)) ```
###### Superimposes a circular frame ``` Circle().stroke() ```

### Text
``` Text("") ```

##### Fonts: 
```
Text("").font(Font.custom("Comfortaa", size: 40)) //custom font
Text("").font(.system(size: 25))
Text("").font(.title)

```
##### Text Color: ```Text("").foregroundColor(.blue) ```

### WebView with UIViewRepresentable:

```
import WebKit

struct WebView : UIViewRepresentable{
    
    let urlString:String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
   
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }   
}

```

# Examples

## Business Card

[<img src="/screenshots/screenshot3.png" width="250" />](screenshot3.png) 

#### ContentView
```Swift
  var body: some View {
        ZStack{
            Color(UIColor(red: 0.87, green: 0.60, blue: 0.40, alpha: 1.00)).edgesIgnoringSafeArea(.all)
            VStack{
                Image(imageName)
                    .resizable().aspectRatio(1,contentMode: .fit).frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(Color(UIColor(red:                      0.36, green: 0.43, blue: 0.57, alpha: 1.00)),lineWidth: 5))
                
                
                Text(name).font(Font.custom("Comfortaa", size: 40)).foregroundColor(.white)
                Text(jobName)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: phoneNumber, imageName: "phone.fill")
                InfoView(text: email, imageName: "mail.fill")
                
                
                
            }
            
        }    }
        
  ```      
    
#### InfoView
```Swift 
struct InfoView: View {
    let text:String
    let imageName:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20).frame(height: 50).foregroundColor(.white).overlay(HStack{
            
            
            Image(systemName: imageName).foregroundColor(Color(UIColor(red: 0.56, green: 0.22, blue: 0.30, alpha: 1.00)))

            Text(text)
        })
        .padding(.all)
    }
}
```


## Dice Game 

[<img src="/screenshots/screenshot1.png" width="250" />](screenshot1.png) 

#### ContentView

```Swift 

struct ContentView: View {
    
    @State var leftDiceNumber = 1 
    @State var rightDiceNumber = 1
    
    var body: some View {
        
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
            VStack{
                Image("diceeLogo")
                
                Spacer()
               
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Rool").font(.system(size: 50)).foregroundColor(.white).padding(.horizontal)
                }).background(Color(#colorLiteral(red: 0.6097301841, green: 0.1105430648, blue: 0.1225960776, alpha: 1)))
               
            }.padding()
            
        }
        
    }
}

```

#### DiceView
```Swift

struct DiceView: View {
    var n:Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit).padding()
    }
}

```

## Hack News 

[<img src="/screenshots/screnshot2.png" width="250" />](screenshot2.png) 


#### DataModels
```Swift

struct DetailView: View {
    var url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct Post: Decodable, Identifiable{
    
    var id:String{ //cause its a identifible
        return objectID
    }
    
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}

struct Results:Decodable{
    let hits: [Post]
}


```


#### DetailView
```Swift
struct DetailView: View {
    var url:String?
    var body: some View {
        WebView(urlString: url)
    }
}
```
#### NetworkManager
```Swift

class NetworkManager: ObservableObject{
    
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if let e = error{
                    
                }else{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Results.self,from: safeData)
                            
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        }catch {
                            print(error)
                        }
                       
                    }
                }
            }
            task.resume()
        }
    }
}

```

#### ContentView

```Swift

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack{
                        Text("\(post.points)").bold()
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hack News")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

```

## Project Catalyst 
Allow to run your IOS app on Mac Os
[<img src="/screenshots/screenshot4.png" />](screenshot4.png) 

