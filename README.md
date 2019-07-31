# NerdExercise
Randomizes a matrix of integers 1 to n*10 so I can practice reciting their squares as I run in place so I don't have to embarrass myself going to the gym or something

I'm really bad at both setting routines and exercising but I'm really good at trying to memorize things so I decided to merge those things together one day when I ran in place reciting the squares from 1 to 30. I already kinda knew those squares already so I wanted to then branch out up to 40. Then I realized I was relying too much on the order of the squares and I couldn't immediately tell someone, say, 39^2, without going through the whole lineup*, so I decided I'd write myself a program to randomize the order of the numbers so I could mentally separate them from their position in that sequence, if that makes any sense. Then what I do is open the file in Notepad++ fully zoomed in (I now use Sublime for everything else but I still had Notepad++ sitting around) and start running!

The first program started out with numbers 1-50, but as I learned the new ones pretty fast (there's an easy pattern) I decided to parametrize the number of 10s I'd have to do, and now I'm up to 60. Still an easy pattern, but sometimes I just find it easier to do the mental math (so it's a double workout, I suppose).

Since the pattern is so easy, once I reach my goal of n = 10, I might change over to cubes. Maybe I'll change the goal to n = 15 first, though. See if the pattern follows the way I expect it to. At that point I might have to change the row size, too...
Regardless, I might finally get those 30 minutes of physical activity each day that are all the rage these days. I wonder how easy the pattern for cubes is...



### Warning...?

Lots of this code has hard numbers where variables would be better. For instance, "j in 1:4" and "4-j" use 4 because I know no square from 1 to 60 is >10^4. If I switch to cubes or up it to n = 15 or something, maybe I'll make it a function of n or maybe I'll just take the lazy way out and just use some "big" number like 10. Also, a lot of this stuff could probably be better implemented. I like to think that it's good for a first personal project, though...  ...right?



#### Footnote (as suggested by the asterisk)

*Nowadays I remember 39^2 because it comes right after one of my favorite base-10 squares. Fun fact, (and feel free to correct me if I'm wrong because I haven't done rigorous testing on it) if you write 804 after this particular favorite square of mine, it's the smallest next square in this sequence of writing more numbers down in front of the square to get another square! Don't know about you, but I think that's pretty darn neat! Haven't bothered to try to find the next one, though. I guess that's a "proof left to the reader".



#### Footnote 2:

This code is probably pretty bad.
