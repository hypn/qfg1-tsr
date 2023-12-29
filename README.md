# Quest for Glory 1 infinite points TSR

This was an attempt to learn how to write DOS TSRs in Turbo Pascal - targetting the game "Quest for Glory 1" by Sierra, to give infinite character creation points.

It has multiple short comings - such as hardcoded memory addresses, which change depending on the hardware or DOSBox you run on, beeping (when the expected value is found at the expecte memory address), and likely not working for different graphics modes or character classes.

Because the game hooks multiple common interrupts, this TSR uses interrupt 0x1C (timer).

![demo](https://www.hypn.za.net/images/2023/tsr-result.gif)
