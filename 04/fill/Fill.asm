// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@SCREEN
D = A
@N
M = D
@RESULT
M = 0

(LOOP)
    @N
    D = M
    @R0
    D=M-D
    @STOP
    D;

    @RESULT
    D=M
    @R1
    D=D+M
    @RESULT
    M=D
    @N
    M=M+1
    @LOOP
    0;
(STOP)

    @RESULT
    D=M
    @R2
    M=D
(END)
    @END
    0;