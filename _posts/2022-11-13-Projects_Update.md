## Intro

I've not posted in some time, but I have been working on some projects. Unfortunately, none of my efforts have coalesced into a fully fledge project that I can write up. However, I think surveying these efforts, explaining what I was trying to do and ultimately why they did not develop into complete programmes would be an interesting exercise for me and hopefully an interesting read for you.

## Movie Review analysis

My initial thought was to create some data visualisations using Python. Of course, creating visualisations requires data. I took a very common data set from [Kaggle](https://www.kaggle.com/), the [Movielens](https://www.kaggle.com/datasets/grouplens/movielens-20m-dataset)
dataset. With this, I hoped to create some movie-related visualisations. For instance, the best decade for movies based on average ratings.

But as I worked through the data I struggled to arrange it in a manner that made sense. The data is spread across several different files and often entries don't match across files. For instance, the total number of unique titles don't match, making it impossible to match the year, movie title and rating. 

I suppose fixing this data set could make an interesting [Data Wrangling](https://en.wikipedia.org/wiki/Data_wrangling) project, but my goal was to learn about creating visualisations so decided to forgo this topic for now. 

## Visualisation personal finances

So at this point, my goal was not to spend a lot of time cleaning up a dataset. Where could I find a sufficiently large data set that I know to be accurate, and should require too much manipulation?

Well, I'd noticed that my bank and credit card company offered CSV versions of my monthly statements. This data is clean and correct (or at least I would hope it is) so I got to work on it.

In the end, after experimenting with the Python plug-in with [Matplotlib](https://matplotlib.org/) I could create some simple visualisations, basic bar charts, line graphs, etc.

Personally, I found this useful in developing a better understanding of Matplotlib. But as I started writing up my notes I felt I was just regurgitating Matplotlib's own [documentation](https://matplotlib.org/stable/tutorials/index). Since I wasn't adding anything new, it didn't seem worthwhile writing it up.

## A personal finances application?

With some amount of success creating basic visualisations I thought perhaps I could expand my project to aggregate multiple statements from different sources since almost all banks and credit institutions offer Excel or CSV statements. Doing this could potentially give me a way to easily check my financial position and if I'm meeting budgets.

Great idea, and obviously all the data is accurate, however aggregating data from different sources again proved challenging. I guess since I'm mostly transacting in Europe, I found that not all sources use UFT-8. Even such seemly simple details such date formats don't match e.g. Apr-22 vs 04/22. 

I did make some effort to try and create a more generic format, you can see my efforts here: [link](https://github.com/sortsammcdonald/py-fin/blob/main/fin_project-comparison_code.py)


However, I concluded that it was not worth the considerable to process and reformat multiple files when I could check and compare all my statements very easily in Excel.

(Even the code linked to above is not fully complete, feel free to have a look and make some suggestions on how to improve it)

Nevertheless, I do feel this attempt improved my understanding of the Object-Orientated aspects of Python considerably. 

## What am I going to do going forward?

Well, I decided to take a break from coding projects for the last few weeks. I've been working on improving my general programming skills. After spending so much time this year trying to get better at Object Orientated Programming, I decided to try out Functional Programming.

This has meant picking up [Scala](https://scala-lang.org/), which has some quite nice features. Learning Scala and Functional Programming has also inadvertently taken me down a rabbit hole on [Category Theory](https://en.wikipedia.org/wiki/Category_theory). I think focus on these topics for the remainder of the year. If I do any coding, I think it'll be to refactor some of my old projects in a more FP manner. Not sure how well Python is set up for this approach but could at least be a mentally stimulating exercise.

As for the New Year, I have a few thoughts. In general, I will try to be more pragmatic and work on things that can yield tangible results. Here are a few ideas:

### Blog update

I'd really like to implement a more fully featured blog. This would require considerable effort and research to find the best hosting solution as well as thinking about which technology to use to build it. I have been considering using a JavaScript framework such as [Angular](https://angular.io/) to do this, but perhaps this is overkill for what is basically a static blog.

I'm not a super prolific blogger after all, but I would like to back into the web side of things and it could serve as an effective portfolio if I get it right.

### Live-streaming coding

I'm also considering live-stream coding sessions. This should require too much effort since I have a fairly well-specced PC at this point. The only problem I can see is that I'll probably have to stream from Windows, which is not ideal as I typically code in Pop_os. But I think for some limited exercise or toy problems this should be fine. For Python exercises using [Google Colab](https://colab.research.google.com/) in a browser should be sufficient

### Hardware project

Over the last couple of years, I have picked up a few simple board computers (Raspberry Pis and some other ARM units). I feel like I've not really used these items effectively and I would like to work on some projects, maybe making some simple games, to run off them

The issue here is that I think my interest in computing mostly leans towards software and more abstract programming. Having said that having some knowledge of how the hardware works could be beneficial.

### So long 2022

That's it for now, don't think there'll be any major updates for the remainder of the year. Enjoy the festive season and let's catch up next year!

<!-- ### Functional programming and Python

For the most part, I've been working in [Scala](https://scala-lang.org/) to learn functional programming. Of course, it is possible to programme functionally in Python, but as far as I can see this is not particularly well documented. There might be some possibility

### Writing up my old coding projects

The purpose of this blog (and any future revision) is to document my progress in learning to code. Most projects I work on don't come to any complete state, which makes writing them in an interesting way a challenge. I would like to document these projects, but how to express them in a form that makes sense? -->