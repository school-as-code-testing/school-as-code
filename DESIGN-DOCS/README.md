# Design Document / Requirements

This is mostly going to be a free-form discussion of what we want to achieve, and how we're planning to achieve it. I expect we'll revise this significantly as we go, particularly after getting feedback from users.

## Overview

As more people get interested in learning to code/program/hack/etc, and more of the collaboration moves to remote/distributed teams and schools, we want to give people a ready-made scaffold for setting up their own learning infrastructure.

Basically, if there's somebody who wants to learn, you've got a study group. If there are multiple people who want to learn, all the better. In the interest of making such ad-hoc groupings fast and easy to set up, we decided to try and create a very basic School-As-Code (SaC).

Given that GitHub repos and organizations are free and a natural place for new learners to actually practice both source control and code review, setting up that infrastructure in GitHub is an obvious choice.

We want somebody to be able to press one button (after setting their own personal GitHub token), and have a fully set up curriculum ready to go. At the moment, this is going to incorporate some ready-made materials, but in the future, it's very likely that it could incorporate any number of different dynamically generated materials, as well as context, assessments, or anything else that somebody thinks would be useful to have in the process of teaching/learning.

(to our knowledge) there is no easy and flexible solution available that ...

- does not require extraneous technical knowledge
- does not require learning workflows irrelevant to basic collaboration
- does implicitly prepare learners for collaborating in the "real world"
- can be flexibly adapted to different materials
- is suitable for different levels

## Is and Isn't

### What this is not

- an LMS
- a CMS
- a competitor to github classroom (or similar things)
- a competitor with repl.it (or similar things)
- a highly centralized school infrastructure
- a new open education protocol

### What this is

- starting from the premise of solo & peer learning
- providing optional layers of coordination on top of the individual and small group
- proposing a _way_ of doing things, within existing technologies and conventions
  - how to manage assignments with issues/labels/milestones/project boards
  - how to organize a study path with a README and github project management features
  - organize learning materials
  - ...
