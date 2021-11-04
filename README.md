# School as Code (SaC)

This will be an attempt to automate setting up a new github org with repos and issues and all that fun stuff.

The only thing that we can't do via the API is set up a new org, so go ahead and do that before any of the other steps.

## Creating a personal access token

If you need some help, check out [this documentation](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).

You should only need the full repo and org scopes to be able to complete the actions here.

## Create a repo

First, copy the `.env.example` file to `.env` and fill out the relevant bits (so you don't accidentally commit it) to run the scripts. Then before you start, try `source .env`, and you should be good to go!

```sh
$ bash create_repo.sh
```
