//
//  SFSymbol.swift
//
//
//  Created by DeShawn Jackson on 7/10/21.
//

import SwiftUI

struct SFSymbol_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            Group {
                SFSymbol().circle
                SFSymbol().circle.fill
                SFSymbol().checkmark
                SFSymbol().person.fill.checkmark
                SFSymbol().rectangle.fill.badge.checkmark
                SFSymbol().text.badge.checkmark
                SFSymbol().video.badge.checkmark
                SFSymbol().square.and.pencil
            }
            
            Group {
                SFSymbol(1).magnifyingglass
                SFSymbol("00").square
                SFSymbol().cylinder.split + "1x2" // cylinder.split.1x2
                (SFSymbol().cylinder.split + "1x2").fill // cylinder.split.1x2.fill
                SFSymbol().cylinder.split + SFSymbol("1x2").fill // cylinder.split.1x2.fill
            }
        }
    }
}

public struct SFSymbol: View {

    public let rawValue: String
    
    public init(_ value: Int) { self.rawValue = "\(value)"}
    public init(_ rawValue: String = "") { self.rawValue = rawValue }
    
    public var image: Image { body }
    public var body: Image { Image(systemName: rawValue) }
    
    public static func +(lhs: SFSymbol, rhs: String) -> SFSymbol {
        SFSymbol(lhs.rawValue.isEmpty ? rhs : (lhs.rawValue + (rhs.isEmpty ? "" : "." + rhs)))
    }
    
    public static func +(lhs: SFSymbol, rhs: SFSymbol) -> SFSymbol {
        SFSymbol(lhs.rawValue.isEmpty ? rhs.rawValue : (lhs.rawValue + (rhs.rawValue.isEmpty ? "" : "." + rhs.rawValue)))
    }
            
    public var a: SFSymbol { self + "a" }
    public var abc: SFSymbol { self + "abc" }
    public var airplane: SFSymbol { self + "airplane" }
    public var airplayaudio: SFSymbol { self + "airplayaudio" }
    public var airplayvideo: SFSymbol { self + "airplayvideo" }
    public var alarm: SFSymbol { self + "alarm" }
    public var aligncenter: SFSymbol { self + "aligncenter" }
    public var alignleft: SFSymbol { self + "alignleft" }
    public var alignright: SFSymbol { self + "alignright" }
    public var alt: SFSymbol { self + "alt" }
    public var and: SFSymbol { self + "and" }
    public var angled: SFSymbol { self + "angled" }
    public var ant: SFSymbol { self + "ant" }
    public var antenna: SFSymbol { self + "antenna" }
    public var app: SFSymbol { self + "app" }
    public var append: SFSymbol { self + "append" }
    public var ar: SFSymbol { self + "ar" }
    public var archivebox: SFSymbol { self + "archivebox" }
    public var arkit: SFSymbol { self + "arkit" }
    public var arrow: SFSymbol { self + "arrow" }
    public var arrowshape: SFSymbol { self + "arrowshape" }
    public var arrowtriangle: SFSymbol { self + "arrowtriangle" }
    public var asterisk: SFSymbol { self + "asterisk" }
    public var at: SFSymbol { self + "at" }
    public var australsign: SFSymbol { self + "australsign" }
    public var b: SFSymbol { self + "b" }
    public var backward: SFSymbol { self + "backward" }
    public var badge: SFSymbol { self + "badge" }
    public var bag: SFSymbol { self + "bag" }
    public var bahtsign: SFSymbol { self + "bahtsign" }
    public var bandage: SFSymbol { self + "bandage" }
    public var bar: SFSymbol { self + "bar" }
    public var barcode: SFSymbol { self + "barcode" }
    public var battery: SFSymbol { self + "battery" }
    public var bed: SFSymbol { self + "bed" }
    public var bell: SFSymbol { self + "bell" }
    public var below: SFSymbol { self + "below" }
    public var bin: SFSymbol { self + "bin" }
    public var bitcoinsign: SFSymbol { self + "bitcoinsign" }
    public var bold: SFSymbol { self + "bold" }
    public var bolt: SFSymbol { self + "bolt" }
    public var book: SFSymbol { self + "book" }
    public var bookmark: SFSymbol { self + "bookmark" }
    public var bottom: SFSymbol { self + "bottom" }
    public var bottomhalf: SFSymbol { self + "bottomhalf" }
    public var bottomthird: SFSymbol { self + "bottomthird" }
    public var box: SFSymbol { self + "box" }
    public var briefcase: SFSymbol { self + "briefcase" }
    public var bubble: SFSymbol { self + "bubble" }
    public var bullet: SFSymbol { self + "bullet" }
    public var burn: SFSymbol { self + "burn" }
    public var burst: SFSymbol { self + "burst" }
    public var c: SFSymbol { self + "c" }
    public var calendar: SFSymbol { self + "calendar" }
    public var camera: SFSymbol { self + "camera" }
    public var capslock: SFSymbol { self + "capslock" }
    public var captions: SFSymbol { self + "captions" }
    public var car: SFSymbol { self + "car" }
    public var cart: SFSymbol { self + "cart" }
    public var cedisign: SFSymbol { self + "cedisign" }
    public var centsign: SFSymbol { self + "centsign" }
    public var chart: SFSymbol { self + "chart" }
    public var checkmark: SFSymbol { self + "checkmark" }
    public var chevron: SFSymbol { self + "chevron" }
    public var circle: SFSymbol { self + "circle" }
    public var circlepath: SFSymbol { self + "circlepath" }
    public var clear: SFSymbol { self + "clear" }
    public var clipboard: SFSymbol { self + "clipboard" }
    public var clock: SFSymbol { self + "clock" }
    public var clockwise: SFSymbol { self + "clockwise" }
    public var cloud: SFSymbol { self + "cloud" }
    public var club: SFSymbol { self + "club" }
    public var coloncurrencysign: SFSymbol { self + "coloncurrencysign" }
    public var command: SFSymbol { self + "command" }
    public var compact: SFSymbol { self + "compact" }
    public var compress: SFSymbol { self + "compress" }
    public var control: SFSymbol { self + "control" }
    public var counterclockwise: SFSymbol { self + "counterclockwise" }
    public var creditcard: SFSymbol { self + "creditcard" }
    public var crop: SFSymbol { self + "crop" }
    public var cruzeirosign: SFSymbol { self + "cruzeirosign" }
    public var cube: SFSymbol { self + "cube" }
    public var cursive: SFSymbol { self + "cursive" }
    public var cursor: SFSymbol { self + "cursor" }
    public var cylinder: SFSymbol { self + "cylinder" }
    public var d: SFSymbol { self + "d" }
    public var dash: SFSymbol { self + "dash" }
    public var decrease: SFSymbol { self + "decrease" }
    public var delete: SFSymbol { self + "delete" }
    public var desktopcomputer: SFSymbol { self + "desktopcomputer" }
    public var dial: SFSymbol { self + "dial" }
    public var diamond: SFSymbol { self + "diamond" }
    public var divide: SFSymbol { self + "divide" }
    public var doc: SFSymbol { self + "doc" }
    public var dock: SFSymbol { self + "dock" }
    public var dollarsign: SFSymbol { self + "dollarsign" }
    public var dongsign: SFSymbol { self + "dongsign" }
    public var dot: SFSymbol { self + "dot" }
    public var dottedline: SFSymbol { self + "dottedline" }
    public var dottedunderline: SFSymbol { self + "dottedunderline" }
    public var double: SFSymbol { self + "double" }
    public var down: SFSymbol { self + "down" }
    public var draw: SFSymbol { self + "draw" }
    public var drizzle: SFSymbol { self + "drizzle" }
    public var drop: SFSymbol { self + "drop" }
    public var dust: SFSymbol { self + "dust" }
    public var e: SFSymbol { self + "e" }
    public var ear: SFSymbol { self + "ear" }
    public var ecg: SFSymbol { self + "ecg" }
    public var eject: SFSymbol { self + "eject" }
    public var ellipse: SFSymbol { self + "ellipse" }
    public var ellipses: SFSymbol { self + "ellipses" }
    public var ellipsis: SFSymbol { self + "ellipsis" }
    public var end: SFSymbol { self + "end" }
    public var envelope: SFSymbol { self + "envelope" }
    public var equal: SFSymbol { self + "equal" }
    public var escape: SFSymbol { self + "escape" }
    public var eurosign: SFSymbol { self + "eurosign" }
    public var exclam: SFSymbol { self + "exclam" }
    public var exclamationmark: SFSymbol { self + "exclamationmark" }
    public var expand: SFSymbol { self + "expand" }
    public var eye: SFSymbol { self + "eye" }
    public var eyedropper: SFSymbol { self + "eyedropper" }
    public var eyeglasses: SFSymbol { self + "eyeglasses" }
    public var f: SFSymbol { self + "f" }
    public var faceid: SFSymbol { self + "faceid" }
    public var fill: SFSymbol { self + "fill" }
    public var film: SFSymbol { self + "film" }
    public var flag: SFSymbol { self + "flag" }
    public var flame: SFSymbol { self + "flame" }
    public var florinsign: SFSymbol { self + "florinsign" }
    public var flowchart: SFSymbol { self + "flowchart" }
    public var fog: SFSymbol { self + "fog" }
    public var folder: SFSymbol { self + "folder" }
    public var forward: SFSymbol { self + "forward" }
    public var francsign: SFSymbol { self + "francsign" }
    public var full: SFSymbol { self + "full" }
    public var function: SFSymbol { self + "function" }
    public var fx: SFSymbol { self + "fx" }
    public var g: SFSymbol { self + "g" }
    public var gamecontroller: SFSymbol { self + "gamecontroller" }
    public var gauge: SFSymbol { self + "gauge" }
    public var gear: SFSymbol { self + "gear" }
    public var gift: SFSymbol { self + "gift" }
    public var globe: SFSymbol { self + "globe" }
    public var gobackward: SFSymbol { self + "gobackward" }
    public var goforward: SFSymbol { self + "goforward" }
    public var greaterthan: SFSymbol { self + "greaterthan" }
    public var grid: SFSymbol { self + "grid" }
    public var guaranisign: SFSymbol { self + "guaranisign" }
    public var guitars: SFSymbol { self + "guitars" }
    public var h: SFSymbol { self + "h" }
    public var hail: SFSymbol { self + "hail" }
    public var halffull: SFSymbol { self + "halffull" }
    public var hammer: SFSymbol { self + "hammer" }
    public var hand: SFSymbol { self + "hand" }
    public var hare: SFSymbol { self + "hare" }
    public var haze: SFSymbol { self + "haze" }
    public var headphones: SFSymbol { self + "headphones" }
    public var heart: SFSymbol { self + "heart" }
    public var heavyrain: SFSymbol { self + "heavyrain" }
    public var helm: SFSymbol { self + "helm" }
    public var hex: SFSymbol { self + "hex" }
    public var horizontal: SFSymbol { self + "horizontal" }
    public var hourglass: SFSymbol { self + "hourglass" }
    public var house: SFSymbol { self + "house" }
    public var hryvniasign: SFSymbol { self + "hryvniasign" }
    public var hurricane: SFSymbol { self + "hurricane" }
    public var i: SFSymbol { self + "i" }
    public var icloud: SFSymbol { self + "icloud" }
    public var `in`: SFSymbol { self + "in" }
    public var indent: SFSymbol { self + "indent" }
    public var indianrupeesign: SFSymbol { self + "indianrupeesign" }
    public var info: SFSymbol { self + "info" }
    public var insert: SFSymbol { self + "insert" }
    public var inverse: SFSymbol { self + "inverse" }
    public var italic: SFSymbol { self + "italic" }
    public var j: SFSymbol { self + "j" }
    public var justify: SFSymbol { self + "justify" }
    public var justifyleft: SFSymbol { self + "justifyleft" }
    public var justifyright: SFSymbol { self + "justifyright" }
    public var k: SFSymbol { self + "k" }
    public var keyboard: SFSymbol { self + "keyboard" }
    public var kipsign: SFSymbol { self + "kipsign" }
    public var l: SFSymbol { self + "l" }
    public var larisign: SFSymbol { self + "larisign" }
    public var lasso: SFSymbol { self + "lasso" }
    public var leaf: SFSymbol { self + "leaf" }
    public var left: SFSymbol { self + "left" }
    public var lefthalf: SFSymbol { self + "lefthalf" }
    public var lessthan: SFSymbol { self + "lessthan" }
    public var light: SFSymbol { self + "light" }
    public var line: SFSymbol { self + "line" }
    public var link: SFSymbol { self + "link" }
    public var lirasign: SFSymbol { self + "lirasign" }
    public var list: SFSymbol { self + "list" }
    public var livephoto: SFSymbol { self + "livephoto" }
    public var location: SFSymbol { self + "location" }
    public var lock: SFSymbol { self + "lock" }
    public var m: SFSymbol { self + "m" }
    public var macwindow: SFSymbol { self + "macwindow" }
    public var magnifyingglass: SFSymbol { self + "magnifyingglass" }
    public var manatsign: SFSymbol { self + "manatsign" }
    public var map: SFSymbol { self + "map" }
    public var mappin: SFSymbol { self + "mappin" }
    public var max: SFSymbol { self + "max" }
    public var memories: SFSymbol { self + "memories" }
    public var merge: SFSymbol { self + "merge" }
    public var metronome: SFSymbol { self + "metronome" }
    public var mic: SFSymbol { self + "mic" }
    public var middle: SFSymbol { self + "middle" }
    public var millsign: SFSymbol { self + "millsign" }
    public var min: SFSymbol { self + "min" }
    public var minus: SFSymbol { self + "minus" }
    public var moon: SFSymbol { self + "moon" }
    public var more: SFSymbol { self + "more" }
    public var multiply: SFSymbol { self + "multiply" }
    public var music: SFSymbol { self + "music" }
    public var n: SFSymbol { self + "n" }
    public var nairasign: SFSymbol { self + "nairasign" }
    public var north: SFSymbol { self + "north" }
    public var nosign: SFSymbol { self + "nosign" }
    public var note: SFSymbol { self + "note" }
    public var number: SFSymbol { self + "number" }
    public var o: SFSymbol { self + "o" }
    public var octagon: SFSymbol { self + "octagon" }
    public var offgrid: SFSymbol { self + "offgrid" }
    public var on: SFSymbol { self + "on" }
    public var open: SFSymbol { self + "open" }
    public var option: SFSymbol { self + "option" }
    public var out: SFSymbol { self + "out" }
    public var outline: SFSymbol { self + "outline" }
    public var p: SFSymbol { self + "p" }
    public var paintbrush: SFSymbol { self + "paintbrush" }
    public var pano: SFSymbol { self + "pano" }
    public var paperclip: SFSymbol { self + "paperclip" }
    public var paperplane: SFSymbol { self + "paperplane" }
    public var paragraph: SFSymbol { self + "paragraph" }
    public var path: SFSymbol { self + "path" }
    public var pause: SFSymbol { self + "pause" }
    public var pencil: SFSymbol { self + "pencil" }
    public var percent: SFSymbol { self + "percent" }
    public var person: SFSymbol { self + "person" }
    public var personalhotspot: SFSymbol { self + "personalhotspot" }
    public var perspective: SFSymbol { self + "perspective" }
    public var pesetasign: SFSymbol { self + "pesetasign" }
    public var pesosign: SFSymbol { self + "pesosign" }
    public var phone: SFSymbol { self + "phone" }
    public var photo: SFSymbol { self + "photo" }
    public var pie: SFSymbol { self + "pie" }
    public var pin: SFSymbol { self + "pin" }
    public var plaintext: SFSymbol { self + "plaintext" }
    public var play: SFSymbol { self + "play" }
    public var playpause: SFSymbol { self + "playpause" }
    public var plus: SFSymbol { self + "plus" }
    public var plusminus: SFSymbol { self + "plusminus" }
    public var point: SFSymbol { self + "point" }
    public var power: SFSymbol { self + "power" }
    public var printer: SFSymbol { self + "printer" }
    public var projective: SFSymbol { self + "projective" }
    public var purchased: SFSymbol { self + "purchased" }
    public var q: SFSymbol { self + "q" }
    public var qrcode: SFSymbol { self + "qrcode" }
    public var questionmark: SFSymbol { self + "questionmark" }
    public var quote: SFSymbol { self + "quote" }
    public var r: SFSymbol { self + "r" }
    public var radiowaves: SFSymbol { self + "radiowaves" }
    public var rain: SFSymbol { self + "rain" }
    public var raised: SFSymbol { self + "raised" }
    public var rays: SFSymbol { self + "rays" }
    public var realtimetext: SFSymbol { self + "realtimetext" }
    public var record: SFSymbol { self + "record" }
    public var recordingtape: SFSymbol { self + "recordingtape" }
    public var rectangle: SFSymbol { self + "rectangle" }
    public var `repeat`: SFSymbol { self + "repeat" }
    public var `return`: SFSymbol { self + "return" }
    public var rhombus: SFSymbol { self + "rhombus" }
    public var richtext: SFSymbol { self + "richtext" }
    public var right: SFSymbol { self + "right" }
    public var righthalf: SFSymbol { self + "righthalf" }
    public var ring: SFSymbol { self + "ring" }
    public var rosette: SFSymbol { self + "rosette" }
    public var rotate: SFSymbol { self + "rotate" }
    public var rotation: SFSymbol { self + "rotation" }
    public var rtl: SFSymbol { self + "rtl" }
    public var rublesign: SFSymbol { self + "rublesign" }
    public var rupeesign: SFSymbol { self + "rupeesign" }
    public var s: SFSymbol { self + "s" }
    public var safari: SFSymbol { self + "safari" }
    public var scissors: SFSymbol { self + "scissors" }
    public var scope: SFSymbol { self + "scope" }
    public var scribble: SFSymbol { self + "scribble" }
    public var seal: SFSymbol { self + "seal" }
    public var selection: SFSymbol { self + "selection" }
    public var sheqelsign: SFSymbol { self + "sheqelsign" }
    public var shield: SFSymbol { self + "shield" }
    public var shift: SFSymbol { self + "shift" }
    public var shuffle: SFSymbol { self + "shuffle" }
    public var sidebar: SFSymbol { self + "sidebar" }
    public var signature: SFSymbol { self + "signature" }
    public var size: SFSymbol { self + "size" }
    public var skew: SFSymbol { self + "skew" }
    public var slash: SFSymbol { self + "slash" }
    public var sleet: SFSymbol { self + "sleet" }
    public var slider: SFSymbol { self + "slider" }
    public var slowmo: SFSymbol { self + "slowmo" }
    public var smiley: SFSymbol { self + "smiley" }
    public var smoke: SFSymbol { self + "smoke" }
    public var snow: SFSymbol { self + "snow" }
    public var snowflake: SFSymbol { self + "snowflake" }
    public var spade: SFSymbol { self + "spade" }
    public var sparkles: SFSymbol { self + "sparkles" }
    public var speedometer: SFSymbol { self + "speedometer" }
    public var split: SFSymbol { self + "split" }
    public var square: SFSymbol { self + "square" }
    public var squarepath: SFSymbol { self + "squarepath" }
    public var squareroot: SFSymbol { self + "squareroot" }
    public var squares: SFSymbol { self + "squares" }
    public var stack: SFSymbol { self + "stack" }
    public var star: SFSymbol { self + "star" }
    public var staroflife: SFSymbol { self + "staroflife" }
    public var stars: SFSymbol { self + "stars" }
    public var sterlingsign: SFSymbol { self + "sterlingsign" }
    public var stop: SFSymbol { self + "stop" }
    public var stopwatch: SFSymbol { self + "stopwatch" }
    public var strikethrough: SFSymbol { self + "strikethrough" }
    public var `subscript`: SFSymbol { self + "subscript" }
    public var suit: SFSymbol { self + "suit" }
    public var sum: SFSymbol { self + "sum" }
    public var sun: SFSymbol { self + "sun" }
    public var sunrise: SFSymbol { self + "sunrise" }
    public var sunset: SFSymbol { self + "sunset" }
    public var superscript: SFSymbol { self + "superscript" }
    public var swap: SFSymbol { self + "swap" }
    public var t: SFSymbol { self + "t" }
    public var table: SFSymbol { self + "table" }
    public var tag: SFSymbol { self + "tag" }
    public var teletype: SFSymbol { self + "teletype" }
    public var tengesign: SFSymbol { self + "tengesign" }
    public var text: SFSymbol { self + "text" }
    public var textbox: SFSymbol { self + "textbox" }
    public var textformat: SFSymbol { self + "textformat" }
    public var thermometer: SFSymbol { self + "thermometer" }
    public var thumbsdown: SFSymbol { self + "thumbsdown" }
    public var thumbsup: SFSymbol { self + "thumbsup" }
    public var timelapse: SFSymbol { self + "timelapse" }
    public var timer: SFSymbol { self + "timer" }
    public var tip: SFSymbol { self + "tip" }
    public var to: SFSymbol { self + "to" }
    public var top: SFSymbol { self + "top" }
    public var tophalf: SFSymbol { self + "tophalf" }
    public var tornado: SFSymbol { self + "tornado" }
    public var tortoise: SFSymbol { self + "tortoise" }
    public var trash: SFSymbol { self + "trash" }
    public var tray: SFSymbol { self + "tray" }
    public var triangle: SFSymbol { self + "triangle" }
    public var trianglepath: SFSymbol { self + "trianglepath" }
    public var tropicalstorm: SFSymbol { self + "tropicalstorm" }
    public var tugriksign: SFSymbol { self + "tugriksign" }
    public var tuningfork: SFSymbol { self + "tuningfork" }
    public var turkishlirasign: SFSymbol { self + "turkishlirasign" }
    public var turn: SFSymbol { self + "turn" }
    public var tv: SFSymbol { self + "tv" }
    public var u: SFSymbol { self + "u" }
    public var uiwindow: SFSymbol { self + "uiwindow" }
    public var umbrella: SFSymbol { self + "umbrella" }
    public var underline: SFSymbol { self + "underline" }
    public var up: SFSymbol { self + "up" }
    public var upright: SFSymbol { self + "upright" }
    public var uturn: SFSymbol { self + "uturn" }
    public var v: SFSymbol { self + "v" }
    public var vertical: SFSymbol { self + "vertical" }
    public var video: SFSymbol { self + "video" }
    public var view: SFSymbol { self + "view" }
    public var viewfinder: SFSymbol { self + "viewfinder" }
    public var volume: SFSymbol { self + "volume" }
    public var w: SFSymbol { self + "w" }
    public var wand: SFSymbol { self + "wand" }
    public var waveform: SFSymbol { self + "waveform" }
    public var wifi: SFSymbol { self + "wifi" }
    public var wind: SFSymbol { self + "wind" }
    public var wonsign: SFSymbol { self + "wonsign" }
    public var wrench: SFSymbol { self + "wrench" }
    public var x: SFSymbol { self + "x" }
    public var xmark: SFSymbol { self + "xmark" }
    public var y: SFSymbol { self + "y" }
    public var yensign: SFSymbol { self + "yensign" }
    public var z: SFSymbol { self + "z" }
    public var zzz: SFSymbol { self + "zzz" }

}

