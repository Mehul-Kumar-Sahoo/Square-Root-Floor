# SQUARE ROOT FLOOR #

I am Mehul Kumar Sahoo currently in 2nd year in BTech in ECE at IIT(BHU). I have made a digital circuit for finding the floor of the square root of a number(10-bits maximum).

## TASK
To find the floor of the square root of a binary number (10-bits maximum).

## SKILLS
Digital Electronics, Proteus

## APPROACH
- First we start counting fron 0 and calculate the square of each number(n)
- Then we will have two cases:-
  - The square of number(n) is equal to input number - In this case we will get the number(n) as answer.
  - the square of number(n) is greater than input number - In that case we will get n-1 as answer.
  
## MAIN CIRCUIT
<img width="603" alt="image" src="https://user-images.githubusercontent.com/93527557/205058748-582cdee0-7162-478c-b59c-f64d9318c763.png">

## SUBCIRCUITS
 - 5 Bit Counter
 <img width="285" alt="image" src="https://user-images.githubusercontent.com/93527557/205058981-1d975e0f-59a8-4345-a196-1fda9a7cd28b.png">

 - 5 Bit Register
 <img width="358" alt="image" src="https://user-images.githubusercontent.com/93527557/205059487-fb4c135a-8e90-4207-bbd5-a2a9a6c4a96e.png">

 - 5 bit number squaring
 <img width="630" alt="image" src="https://user-images.githubusercontent.com/93527557/205059720-001deb73-8809-496b-a7ca-550dfd55482c.png">

 - 10 bit Comparator
 <img width="747" alt="image" src="https://user-images.githubusercontent.com/93527557/205059890-5ba24733-af79-45ad-a09a-67095e1e3415.png">

 - 5 bit Multiplexer
 <img width="400" alt="image" src="https://user-images.githubusercontent.com/93527557/205060023-e58de7ba-ae11-411a-be06-fb9c1edb111f.png">
