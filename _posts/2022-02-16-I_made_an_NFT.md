I made an NFT
===

Yes, I'm jumping on this bandwagon... but my intention is educational While I have minted some NFTs they are not for sale so this really is a coding project. My hope is to demonstrate some principles of Object Orientated Programming through this process.

With artists [selling their work](https://www.theverge.com/2021/3/11/22325054/beeple-christies-nft-sale-cost-everydays-69-million) for millions, the creator of the web [auctioning its original source code](https://www.bbc.com/news/technology-57666335) and even comedians having a go, NFTs are commanding a lot of interest right now.

<iframe width="560" height="315" src="https://www.youtube.com/embed/CxLat3SzBx0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Intrigued by the subject, and after investigating what all the fuss was about, I decided to create an NFT, you can see the result [here](https://opensea.io/BilliamFake). 

And you can check out the code I wrote to generate the NFTs [here]()

Some context
---

The NFTs I've created are cards, each featuring a procedurally generated poem, written in the style of a prominent English 17th Century poet. The poems have a format inspired by haiku that I call Mocku. Why did I choose this format? What has it got to do with learning to code? 

Well to explain that I'd like to touch on a topic that I don't think has been properly explored in the media - specifically the extent to which the process used to create NFTs resembles gaming mechanics. 

Let's look at an example. When I first came across the avatars created by the [Board Ape Yach Club](https://boredapeyachtclub.com/#/) two things struck me.

First, while I don't know what process they used to generate their NFTs, I suspect it may involve [procedural generation](https://en.wikipedia.org/wiki/Procedural_generation), which is a technique commonly used in [rogue-like games](https://en.wikipedia.org/wiki/Roguelike). Such games do not have set levels, rather the game generates new levels each time you play by combining predefined elements. If the game has enough elements and the chance of each element occurring in a round has a well thought through probability, you should never play exactly the same game twice.

I suspect BAYC used some kind of procedural generation to combine the properties of each ape. Moreover, by making some characteristics rarer than others, they could create a sense of scarcity, with only a limited number of apes including the most desirable characteristics i.e. the least probable characteristics.

This brings me on to the second element of NFTs that reminds me of gaming - [loot boxes](https://en.wikipedia.org/wiki/Loot_box). Loot boxes are pseudo-randomly generated in-game items. Frequently they offer purely aesthetic enhancements (clothing, skins, armour) but they can also enhance a character's abilities (with better weapons or potions). Since some items are extremely rare which encourages players to spend more time in the game, hoping they will eventually find the rarest items. 

If you're not into gaming, the appeal is somewhat akin to collecting football player, or pokemon, stickers. Half the fun is seeing if you got a rare specimen when you rip open a sticker pack. 

With procedurally generated NFT then, I believe a similar dynamic is at work. One in which rare and unusual NFTs can become extremely appealing and so valuable.

With my own NFT then I wanted to create something based on these two features.

Design approach
---
In summary, I wanted to create something procedurally generated with a degree of scarcity resulting from certain elements being more rare than others. How could I realise this?

The first issue I confronted was that I don't have any drawing skills so I could not create procedurally generated images along the lines of BAYC. 

However, I have previously undertaken a coding project that made [procedurally generated texts](https://sortsammcdonald.github.io/2020/11/22/Comment_CH-2.html). So I thought it might be interesting to create poems. 

The next issue was I didn't want to do anything that would violate copyright so I opted to use public domain texts from 17th century English poets. This period includes well-known poets such as Shakespeare.

It is worth noting that strictly speaking my Mockus aren't poems. The programme I wrote creates text based on the proximity of words to each other as opposed to a true poetic structure. 

To clarify, the source poems are written in verse, which means each line contains a particular number of syllables with particular emphasis. The number of words in each line is not so important as the number of syllables. Creating a programme that could write verse would I suspect require some machine learning (more on that later). 

Since I couldn't create poems in the actual style of the era, I thought it made sense to acknowledge this and create something in a style that I believe was unknown in England in the 17th Century - the haiku. Of course, these are not true haikus either. 

As with English poetry, haikus use a verse form with a regular structure. A haiku consists of three lines with a syllable structure of 5,7,5. I decided to simplify this by having the programme generate 17 words and split them along 3 lines with 5 words on the first, 7 on the second and 5 on the last.

To create additional scarcity I decided to randomise the font and colour of the text as well.

Programme features
---

I did mention there is an educational component to all this and here it is. I wrote a very straightforward programme using Object Orientated Programming principles. With the NFT being the object and the programme embedding within each characteristic according to a particular probability.

The programme consists of 3 classes. A randomiser class that takes a list, assigns each element in the list a weight and then outputs as many values as the user specifies. 

There is the Mocku class itself, which generates the cards. It does so by taking a random author and producing a 15 word text.

This is done by parsing through each line and then word of a sample of poet's writing using a shifting class to create tuples of two items i.e, each word (prefix) followed by the next word (suffix). 

Each word is mapped as a dictionary with any word(s) following it represented as the keys.

The final part then is generating a text, which involves first choosing a random key and a random value associated with that key. The programme repeats the process 15 times to create a Mocku to create a text that hopefully has a superficial resemblance to the poet's writing.

Finally, a font and writing style are chosen.

Shortcomings and thoughts on how to improve
---
The most obvious shortcoming is that my designs are not great. Again the purpose of this exercise what to improve my Object Orientated Programming style so I'm ok with that.

Similarly strictly speaking the texts aren't poems. The issue in creating poems is that most poetry, particularly of this era has a verse structure i.e. each line includes a certain number of syllables and combines unstressed and stressed syllables to create a particular rhythm. 

Probably the most famous example of this is [iambic pentametre](https://en.wikipedia.org/wiki/Iambic_pentameter), where each line is 10 syllables long and combines 5 unstressed and 5 stressed syllables. This is the form Shakespeare employed throughout his plays.

I suspect it might be possible to create a machine learning programme to learn this verse structure and output texts that at least more closely resemble verse.

Other thoughts I had to improve the gaming element included adding more dynamic elements. For instance, generating cards at a particular time over a finite period. Linking the colours, which are all precious metals, to the actual price of these metals in USD at the time of minting.

Conclusion
---

I'd like to end by touching on the most controversial element relating to NFTs, which is their current extreme valuations. I'm certain we would not have such animated, and often acrimonious, discussions on NFTs if they did not command the prices they do.

Personally, I would not pay several thousand USD for a jpeg of an Ape, but when you look at the prices certain examples of contemporary art generate, or baseball cards for that matter, is it really surprising NFTs can go for these sums?

I do feel the underlying technology, particularly the gaming elements I mentioned, do imbue NFTs with a certain value. But does that justify the price they currently sell for? I guess the market will ultimately decide in time...

<iframe width="560" height="315" src="https://www.youtube.com/embed/N8f-BQFo7lw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Post-script - what tools I used
---

Just some closing notes on what tools I used to create my NFTs.

- [Bison App](https://bisonapp.com/en/) - This is a crypto exchange from the Stuttgart stock exchange and Solaris bank. I use this to buy and sell crypto currencies
- [Meta Mask](https://metamask.io/) - The app I used to register my account on Open Sea and accept Ethereum payments
- [Open Sea](https://opensea.io/) - A popular NFT exchange
