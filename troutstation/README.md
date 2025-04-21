# CONTRIBUTING TO TROUTSTATION
an essay into madness by Cirr

## Why would you do this?
- Get your cool OC feature into the space game
- Suffer endless horrors at working with design tools from 20 years ago
- "How much effort could it be to implement this small tweak??"
- WYCI means When You Code It
- put that you wrote code for a multiplayer sandbox game on your resume or CV
  - (this is not a joke, several people have done this, and so did I once upon a time)

## How would you do this?

### PREPARATION
I would strongly recommend at least skimming through the [tgstation Guide to Contributing](https://github.com/tgstation/tgstation/blob/master/.github/CONTRIBUTING.md), although you can safely ignore any mention of Good Boy Points and the team structure they have. Following the guides from there will be of great use.

Firstly, you'll need to set up a development environment. I'm just going to point at the [development guide](https://hackmd.io/@tgstation/HJ8OdjNBc) because it explains things better than I could, and will get you set up with tools that were not made 20 years ago.

BYOND *does* come with its own development tools, and you can use those, but I would strongly, *strongly* recommend against using its built-in code editor. Please, please have more respect for your own health than to use it.

### FORK ME
When you have your development environment set up, whether's that you setting up VSCode and its extensions (highly recommended if you intend to add more than one thing ever) or going at it with pluck, courage, BYOND's own dev tools, and whichever Git client scares you the least, follow the next few steps to make your life easier. I promise this will make your life easier.

#### Fork and Clone
- Fork the repository. You'll need a GitHub account to do this, but that's free. For now.
- Go to https://github.com/Cirrial/cirrstation and you'll see a button that says "Fork" to the right and up. Click it to have a space station of your very own
- Go to your new fork, and **clone** the repository by clicking on the green Code dropdown button, it'll give you options on how you want to clone the repository.
  - The exact specifics for this are out of scope of this document, but basically if you pick HTTPS you'll have to put your GitHub username and password into your client each time, and if you pick SSH [you'll need to look into setting up a whole bunch of stuff instead](https://docs.github.com/en/authentication/connecting-to-github-with-ssh), so if you're very new to this I'd recommend HTTPS

#### Setting up the Upstream, & Branching Advice
- On your local copy of the repository, set up a second origin, `upstream`, and point it to the Troutstation repo confusingly called cirrstation (the same one you initially forked).
  - I can't give advice here because every Git client is different, and it's different if you're using HTTPS or SSH (it might just be easier to ask Cirr for advice here there's too many possibilities to cover)
  - Or if you're using Git on the command line,

  	```
	git remote add upstream https://github.com/Cirrial/cirrstation.git
  	```
	(or `git remote add upstream git@github.com:Cirrial/cirrstation.git` if you're using SSH)
	```
	git fetch upstream
	git checkout -b troutstation upstream/troutstation
	git push origin
	```
- Check out the branch `troutstation` from the upstream to your own repository, and push it to your fork.
- **Change your branch from `master` to `troutstation`.**
- Now, **make a new branch from this branch.** Name it whatever you feel like. You can now change whatever you feel like, and it will be nice and isolated from everything else. And if you screw up royally, you can change back to the `troutstation` branch and make a new branch

#### "But Cirr, why are we doing this whole "troutstation" branch nonsense?"
It makes maintaining the troutstation repo easier. I appreciate it makes contributing a little harder, but this way the "master" branch is (in theory) identical to the tgstation master branch and it's less of a confusing headache to manage. (In practice, the master branch is always going to be a little bit behind, as nothing is automatically keeping them in sync. YET)

### SYNCING YOUR REPO (and avoiding a million merge conflicts)
Time always goes forwards and the repositories all get updates.
GitHub will helpfully tell you if the `master` branch is out of date.
This is sadly not helpful as the main branch we work on here is the `troutstation` branch.

#### Basic approach:
- Open GitHub for your repository
- Click the little branch button that says `master` and change it to `troutstation`
  - If you don't have a `troutstation` branch please refer back to setting up the upstream
- GitHub should helpfully tell you about whether you're out of sync or not and offer a link to automatically bring your `troutstation` branch up to sync, and providing you've been making your changes in branches that aren't the `troutstation` branch, it should just work
  - if it does not work and you do not know why, I would suggest asking someone for help
- Do not forget to PULL on your local `troutstation` branch!

#### Advanced, quicker approach if this makes sense to you:
- Fetch from upstream
- Pull `troutstation` from upstream
- Merge/rebase `upstream/troutstation` into your local `troutstation` branch
- Push to `origin/troutstation` if you feel like it (this is more important for repos that are being worked on by multiple people or otherwise accessed by external things, which, as you're working on a development fork, should not matter for you)

If you've been working on changes in a feature branch, merge `troutstation` into your local feature branch. That way you should have your changes and the latest Troutstation changes all accounted for, and you will not get horrible merge conflicts when you submit your PR.

#### I got horrible merge conflicts
Hooray! Unavoidable. It doesn't matter how much we try, all we can do is minimise the risk. Hopefully your client will tell you what conflicts and offer you a way to step through and resolve the conflicts, but the key thing is you need to resolve the conflicts in your branch, and then when you submit the PR you'll have done the work required to resolve the conflicts and it should just easily merge in.

This isn't always the case because the world is a chaotic and noisy place and all processes meet their match eventually but, generally speaking, if you follow the advice in the next section you will again minimise the chances of this happening.

Worst case scenario, just talk to Cirr.

### ACTUALLY MAKING CHANGES
Let's discuss what to do next!!

### I don't know what to do to make my change.
Yeah I feel you there buddy, there's no way around this except trying to read code for something similar and piecing together what it's doing. If you're trying to do something extremely original and innovative as your first code change, don't. Do something smaller first. If you want to get seriously into working on a thing for SS13 you will at some point need to learn some of the fundamentals of BYOND coding.

Quick references for this:
- [The Blue Book, a standard BYOND DM intro guide](https://www.byond.com/docs/guide/)
- [The DM Reference you will end up checking more often](https://www.byond.com/docs/ref/)
- [The Red Book, an unofficial repository of forbidden knowledge](https://docs.google.com/document/u/0/d/1HGkCp4eQU8Jp14Srh8Isuv_liehzV_XB6IcSUbVFFiY/pub?revision=latest%22%22)

There are also coding guidelines scattered throughout the codebase and I haven't even found all of them, good luck!!

(My first ever SS13 addition was a pizza cutter and that was basically just a circular saw reskin)

### Where do my changes go?
We're trying to follow a "**modularization pattern**". This is a fancy way of saying "stick as much of the stuff we're doing in a separate folder". For consistency's sakes, we try to mirror the existing filepath structure for the rest of the repository.
This is **especially important** for binary files like DMIs and OGGs as they **cannot** be merged at all, so the fewer things we touch in the existing repo the better.

There's a [probably better written guide to this concept](https://github.com/Monkestation/Monkestation2.0/blob/master/monkestation/README_old.md) by Monkestation, who ended up abandoning modularisation for their own reasons, but it still makes sense for us as an itty bitty little baby fork.

What does that actually mean? It depends on your change.

### If your change is:

#### Adding something new
Easiest situation! Probably!
- If your change involves defining a new thing, find where you would most likely add a file or edit an existing file, and make a **new** file in an equivalent directory in the `troutstation` folder.
  - For example: you have a new type of food you want to add. Add it to `troutstation/code/game/objects/food` instead of `code/game/objects/food`.
  - Remember that if you're adding new files, `tgstation.dme` needs to have the path added as well or it won't be included in the compile, and your new stuff won't exist!
- Defines (largely compile-time constants and macros) are handled a little differently. If you need to add new defines, add them to the file that uses them, or if they're going to be used in more than one place, use `code/__DEFINES/~troutstation`. If you don't know if you need to use defines or not, most of the time you probably won't. This has to be in a different folder for load order reasons, defines _have_ to come earlier than everything else.
- If you need to edit something else in the process of adding something new, keep reading.

#### Changing or removing something that exists
Oh boy.
- If you want to add new vars or procs to an existing thing without modifying the existing vars or procs, or you want to add an extra bit to the end of the proc, then BYOND's cool horrible features actually have you covered! This can still be made modular. Whether it should or not is another matter; if it's just too much effort to make modular, I totally understand.
  - If you redefine the same path in a later file, you will not override the path but you will add things on. So, for example, say we have `obj/item/gun` defined in the normal code. Then in a modular file, we can do this:
	```
	/obj/item/gun
		var/muzzle_flash = TRUE
	```
  	and this will retroactively add `var/muzzle_flash` to the item as you'd expect.
	However, you can't do this with lists -- if you try to add new things to a list you're likelier to just end up redefining the list.
  - You can do this with ~~functions~~ procs too. `..()` is a wonderful DM term that means "call parent function". Except, if you're redefining the proc again, it *actually* means "call the previous version of this function first". This is horrible. I hate it. You will probably not need to do this and it might be better to just not do this. But the option is there.
- If you can't make a change in isolation because you need to edit a chunk inside a proc or you need to edit something like a big list, the change will be non-modular and you'll have to edit the actual file. In this situation, make sure to note that there's an edit that has been made for us:
	```
	// ADD NEW TROUTSTATION DNA BLOCKS HERE
	#define DNA_ANTEATER_SNOUT_BLOCK 26 // Troutstation edit
	```
	This makes it easier when reviewing merge conflicts to know what **we** changed versus what the **upstream** changed.
- If you want to straight up kill something from the code, **comment it out** and leave a comment near the chunk of code that says `// Troutstation removal` or something to that effect. Again, this helps with knowing what to do in future if the upstream updates something related.

#### Some combination of all of the above

- Good luck.

### REFERENCE INDEX

- [tgstation Guide to Contributing](https://github.com/tgstation/tgstation/blob/master/.github/CONTRIBUTING.md)
- [tgstation Development Guide](https://hackmd.io/@tgstation/HJ8OdjNBc)
- [BYOND DM Blue Book](https://www.byond.com/docs/guide/)
- [BYOND DM Reference](https://www.byond.com/docs/ref/)
- [BYOND DM Red Book (unofficial)](https://docs.google.com/document/u/0/d/1HGkCp4eQU8Jp14Srh8Isuv_liehzV_XB6IcSUbVFFiY/pub?revision=latest%22%22)
- [Monkestation Guide to Modularization](https://github.com/Monkestation/Monkestation2.0/blob/master/monkestation/README_old.md)
