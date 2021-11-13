# Automation

All of the listed artifacts can be created and maintained manually using GitHub, CLI and a text editor. but that's a pain, so we'll automate it.

## Scripts

It's our intention that a declarative process will be able to take some form of configuration (eg. the `school.yaml` file in this repo) and turn that into the artifacts listed above. It should also be possible that some of the config gets updated, for example a new learner is added to the config for the learner repos, and on a subsequent run of the automation, the only change to the artifacts is that the new learner also has a repo of their own. We want this automation to enact the config file as what exists, not necessarily specify how it gets created/updated/deleted.

## Language and Frameworks

At the moment, the existing automation uses shell scripts, but it might be that this isn't the best solution, going forward. This will get a wider discussion in the Users section below, but it's highly likely that we end up with a higher-level interpreted language for reasons expanded on in that discussion.

It's also possible that the automation will create artifacts outside of GitHub (eg, discord webhooks), but that still needs to be discussed.

In terms of the language choices that we make for the initial version of the automation, it would probably be best to use a higher-level language than shell scripts, mostly because we want to use a simple, clean configuration file format like yaml, and bash doesn't have native support for parsing yaml.

So it seems in general that we need to decide on what will get us the fastest feedback/development in the short term, given that even if we were to reimplement everything from NodeJS to Python (or vice-versa), it wouldn't be very significant, and so any decision we make now is very easily reversible in the near to medium term anyway.

I'll propose the following three options, with advantages and disadvantages for each:

### Python

Very common and easy to use, though given that the initial coursework we're looking to re-implement is using node, and configuring python environments is traditionally "not fun" (:tm:), this might introduce more trouble than it's worth. On the other hand, provided that we eventually want this to be behind a web-app or some other type of facade, maybe using python, even if it's not as close to the existing coursework, would be a good step towards where we expect to go eventually.

### NodeJS

This is the language used in the coursework we're trying to replicate, and so it's basically guaranteed to be on the workstation of anybody who wants to teach it. The asynchronous nature of Node could make it a bit trickier (just in terms of forcing synchronous execution with a bunch of extra code) if there are dependencies between artifacts that need to be created in a specific order (eg, we need project boards before we add cards to those boards).

### Docker

This option conveniently side-steps the need to even know anything about either Python or NodeJS (or any implementation language), as we can just run the automation in a container. The only downside is that it requires an installation of Docker and the ability to build/run containers. This is becoming a more common aspect of development (definitely full-stack/backend, and even in some cases frontend) these days, so it might not be entirely unreasonable to expect technical users to be able to use Docker.
