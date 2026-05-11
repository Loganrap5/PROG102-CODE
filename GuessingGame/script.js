// Generate random number between 1 and 10
let secretNumber = Math.floor(Math.random() * 401) + 800;

let guesses = 0;

function checkGuess() {

    let guess = Number(document.getElementById("guessInput").value);
    let message = document.getElementById("message");

    if (guess < 800 || guess > 1200) {
        message.textContent = "Guess outside range."
        return;
    }

    guesses++;

    if (guess < secretNumber) {
        message.textContent = "Not quite! Try guessing higher.";
    }
    else if (guess > secretNumber) {
        message.textContent = "Too many coins! Maybe lower.";
    }
    else {
        message.textContent = `Incredible! It took you ${guesses} attempts to guess!`
    }
}
