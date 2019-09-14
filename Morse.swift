let translateTable = [
    "A": ".-",
    "B": "-...",
    "C": "-.-.",
    "D": "-..",
    "E": ".",
    "F": "..-.",
    "G": "--.",
    "H": "....",
    "I": "..",
    "J": ".---",
    "K": "-.-",
    "L": ".-..",
    "M": "--",
    "N": "-.",
    "O": "---",
    "P": ".--.",
    "Q": "--.-",
    "R": ".-.",
    "S": "...",
    "T": "-",
    "U": "..-",
    "V": "...-",
    "W": ".--",
    "X": "-..-",
    "Y": "-.--",
    "Z": "--..",
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
    var offsetByNum = 0
    var wordJoiner = ""
    if englishInput.count > 0 { 
    for _ in 1...englishInput.count {
        let indexOffset = englishInput.index(englishInput.startIndex, offsetBy: offsetByNum)
        let indexOffsetOutput =  String(englishInput[indexOffset])
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
