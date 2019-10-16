let translateTable = [
    "a": ".-",
    "b": "-...",
    "c": "-.-.",
    "d": "-..",
    "e": ".",
    "f": "..-.",
    "g": "--.",
    "h": "....",
    "i": "..",
    "j": ".---",
    "k": "-.-",
    "l": ".-..",
    "m": "--",
    "n": "-.",
    "o": "---",
    "p": ".--.",
    "q": "--.-",
    "r": ".-.",
    "s": "...",
    "t": "-",
    "u": "..-",
    "v": "...-",
    "w": ".--",
    "x": "-..-",
    "y": "-.--",
    "z": "--..",
    "1": ".----",
    "2": "..---",
    "3": "...--",
    "4": "....-",
    "5": ".....",
    "6": "-....",
    "7": "--...",
    "8": "---..",
    "9": "----.",
    "0": "-----",
    " ": " / ", // <- This is called when a space is entered in the input text, you can change it to whatever you want
]
// Add to, or change 'translateTable' to your liking to add support for more characters

func translating(englishInput: String) {
    var offsetByNum = Int()
    var wordJoiner = String()
    let text = englishInput.lowercased()
    if text.count > 0 { 
    for _ in 1...text.count {
        let indexOffset = text.index(text.startIndex, offsetBy: offsetByNum)
        let indexOffsetOutput =  String(text[indexOffset])
        // '#' called when unrecognised character is entered
        let translate = translateTable[indexOffsetOutput] ?? "#"
        wordJoiner += "\(translate)  "
        offsetByNum += 1
    }
    // word joiner is the output, make it do whatever you want
    print(wordJoiner)
    }
}

// enter the text you want to encode
translating(englishInput: "the text you want to encode")
