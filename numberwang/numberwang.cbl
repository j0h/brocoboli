identification division.
program-id. numberwang.

data division.
working-storage section.
  01 secret binary-int.
  01 guess  binary-int.

procedure division.
  display "Enter a secret number: " WITH NO ADVANCING.
  accept secret.

  perform until secret = guess
    display "Enter your guess: " WITH NO ADVANCING
    accept guess

    if guess > secret then
      display "Guess too large."
    end-if
    if guess < secret then
      display "Guess too small."
    end-if
  end-perform

  display "That's Numberwang!".
