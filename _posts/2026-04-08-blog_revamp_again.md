---
title: "Blog revamp (again)"
date: 2026-04-08
description: "An account on rebuilding my Astro blog in GitHub pages."
author: "William Samuel McDonald"
tags: ["blogging", "github-pages", "astro", "jekyll", "llm", "vibe-coding", "workflow", "rebuild"]
license: "CC by 4.0"
---


# Blog revamp (again)

You might notice something different with this post. The blog has been completely redesigned, not just visually, but under the hood as well.

Why the change? Mainly because my hard drive suffered a catastrophic crash, and after reinstalling the OS there was nothing left of my old Astro build. That made it a good moment to step back and rethink things.

In this post, I’ll walk through how I set up the new version of the site. It might be useful if you’re considering creating your own blog, and it also serves as a small, practical example of *vibe coding* in action.

Before getting into that, it’s worth saying that I’m not a web developer. Most of the issues I had with Astro were the result of my own lack of experience rather than the framework itself. I mention this to avoid discouraging anyone from using Astro. It’s a strong choice in many ways, just perhaps better suited to someone with more experience in web development[^1].

<img 
  src="/assets/2026.04.08-blog_revamp_image.jpg" 
  alt="Notebook and pen on a desk beside a laptop"
  width="800"
  loading="lazy">
  
## Summary

The blog is now running on [GitHub Pages](https://docs.github.com/en/pages) with a custom domain. In a way, this is a return to where it started, as the original version of the blog was also hosted on GitHub Pages as a fork of the Fastai project.

A few years ago, I rebuilt the site using the Astro framework. At the time, I was having issues authenticating the custom domain (something that, in hindsight, was never fully resolved), and I wanted more flexibility in terms of design.

However, after losing the Astro build and reviewing my options, returning to GitHub Pages ended up being the most practical solution.

## Why not stick with Astro?

Given the amount of work I had already put into the Astro version, it might seem strange to abandon it. The crash exposed a more fundamental problem though: I didn’t have a proper backup.

The site itself was still live and working, but without a local build, I had no way to update it. That’s not a great place to be.

What I really needed was a setup that I could reliably restore if something went wrong again.

To be fair, this is something I could have solved within Astro. It’s entirely possible to sync an Astro project with GitHub. I simply hadn’t set that up when I originally built the site, so that oversight is on me, not the framework.

I could have rebuilt the blog in Astro and corrected that mistake. However, when I looked at Astro’s current documentation, it felt like the project had evolved quite a bit since I first used it in 2022. Back then it was positioned very clearly as a static site generator. Now it seems to have broadened into a more general-purpose framework.

All the tooling for static sites is still there, but I felt less drawn to it this time around. And since my original build was gone anyway, it felt like an opportunity to try something different.

## Considering alternatives

As I discussed [a few years ago](https://ql-blog.com/2023/04/08/blog-overhaul.html), choosing a blogging platform isn’t entirely straightforward. At one end, you can build everything yourself. At the other, you can use a CMS like Blogger or Squarespace and avoid most of the technical overhead.

The trade-off is familiar. Full control versus convenience.

My preference sits somewhere in the middle. I want something that looks good and is somewhat customisable, but doesn’t require a huge amount of effort to get off the ground or maintain.

With the previous version of the blog, Astro felt like the right balance. This time, I explored a few other options.

For a while, I seriously considered [Blogger](https://www.blogger.com). If your goal is simply to write and not think about infrastructure, it’s a reasonable choice.

In the end, I decided against it. I don’t particularly like how it renders content, it feels quite dated, and importing my existing posts in any structured way would have required working with their API. That rather defeats the purpose of choosing a low-effort platform.

So I turned back to GitHub Pages, which I had used before. This time, perhaps with a bit more experience, it was relatively straightforward to set up[^2].

## Vibe coding

One major difference compared to when I first built the blog is the presence of LLMs.

I relied on ChatGPT quite heavily throughout this process. Not just for generating code, but for troubleshooting and filling gaps in my understanding. In practice, this meant I could move much faster, even in areas where I wouldn’t normally feel confident.

For example, I was able to resolve the authorisation issues that had previously blocked me from using GitHub Pages. It also helped in adapting the Jekyll setup into something a bit more tailored to my needs.

It proved especially useful when repopulating the blog. I had a JSON archive of my old posts, and with ChatGPT’s help I wrote a script to extract and convert that content into a format suitable for the new site.

The result isn’t perfect. Some formatting and images have been lost. But the important thing is that the material itself is still available.

## Conclusion

So here we are. A new version of the blog, built on simpler foundations and, hopefully, something I can maintain without losing everything to the next hardware failure.

If nothing else, this iteration feels more resilient, and a bit more intentional.

---

[^1]: The source code for the blog is available on my [GitHub](https://github.com/sortsammcdonald/sortsammcdonald.github.io). As mentioned, this is essentially the Fastai template with some tweaks assisted by ChatGPT.

[^2]: Another alternative would be [WordPress](https://wordpress.com/). I haven’t explored it in depth, but it’s obviously a popular option with a lot of flexibility.

## Licensing 
<a href="https://ql-blog.com/2026/04/08/blog_revamp_again.html">Blog revamp (again)</a> © 2026 by <a href="https://www.sammcdonald.me">William Samuel McDonald</a> is licensed under <a href="https://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International</a><img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;">

Image: Generated by William Samuel McDonald using Adobe Firefly. Released under the Creative Commons Attribution 4.0 International (CC BY 4.0) license.
