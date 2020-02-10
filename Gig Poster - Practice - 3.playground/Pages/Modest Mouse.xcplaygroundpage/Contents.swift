//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x:0,y:0), width: 400, height: 600)
//canvas.drawLine(from: Point(x:400,y:400), to: Point(x:0,y:0), lineWidth: 22)
//if x < 325{
//    canvas.fillColor = lightGrey
//}else if x >

//for x in stride(from: 50, through: 500, by: 43) {
//    for y in stride(from: 610, through: 0, by: -43) {
//        canvas.drawLine(from: Point(x:x,y:y), to: Point(x:x-600,y:y-600), lineWidth: 15)
//    }
//}

for x in stride(from: 40, through: 1000, by: 43) {
    if x<550 {
        canvas.lineColor = lightGrey
    }else if x>550,x<650{
        canvas.lineColor = deepYellow
    }else{
        canvas.lineColor = black
    }
        canvas.drawLine(from: Point(x:x,y:600), to: Point(x:x-600,y:0), lineWidth: 15)
}

canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x:0,y:400), width: 400, height: 200)

canvas.drawText(message: "modest mouse", at: Point(x:10,y:400), size: 40)
canvas.drawText(message: "at the speak in tongues social hall", at: Point(x:10,y:575), size: 9)
canvas.drawText(message: "4311 lorain ave./ cleveland, oh", at: Point(x:10,y:565), size: 9)
canvas.drawText(message: "saturday / august 24 1996", at: Point(x:170,y:575), size: 9)
canvas.drawText(message: "10 pm, all invited", at: Point(x:170,y:565), size: 9)
canvas.drawText(message: "with old hearts club", at: Point(x:300,y:575), size: 9)
canvas.drawText(message: "and melk", at: Point(x:345,y:565), size: 9)

//Last, draw a grid for referennce
for y in stride(from: 0, through: 600, by: 50){
    canvas.drawLine(from: Point(x:0,y:y), to: Point(x:400,y:y))
}
for x in stride(from: 0, through: 400, by: 50){
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

