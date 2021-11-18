# Scoping and Timeline

We'd like to focus first on individual learners and groups of learners with some central support, and so we're aiming to have the must-have artifacts creatable and updateable by automation by the end of the year. We're planning to tweet out for any prospective users to try out our "beta release" on or soon after Dec 31, 2021.

---

## Personas

here are two key user groups that we're interested in: teachers/admins and learners, however the learners are primary.

The study group works without explicit teachers, but the fundamental unit we're targeting is the learner. We'll probably get an MVP that's the test case of a small group of learners who wants to learn together, and then perhaps later think about how to customize the process so that it could be equally useful for teachers to use as extracurricular materials, or to use as a complete curriculum platform in a very modular and configurable way.

### Learners

We have a couple different scenarios in terms of the learners: the fundamental unit we're targeting is a study group of one, and in this sense, we want everything to work for somebody without a lot of experience in the very medium we're building this in, GitHub. So while the eventual product will have a lot of the implementation details and automation abstracted away, we might need to make the MVP target learners who are able to interact with GitHub and the CLI already.

The second scenario is learners who find themselves in a course managed by a more experienced teacher, in which case, we can design towards the considerations laid out in the Teachers/Admins section below.

To the extent that we're interested in designing for learners in this latter scario, they probably don't play a huge role in determining our design, though it would be nice if they have an easy way to modify their participation themselves via automation. This might take the form of creating another repo for themselves or even dynamically generating a new project board task card for themselves if they find their assigned work too easy (self-directed differentiated instruction?).

### Teachers/Admins

Ideally, in the long run, this role will not need experience in the technologies used to implement this system. But for the first POC's we will expect them to be fairly experienced to advanced in terms of tech, and so we don't necessarily need to hide all of the implementation details from them.

Obviously, the less they have to worry about, the better...though it's probably not too much to expect them to be able to create a GitHub org as well as a personal access token and set those values in their shell to run the automation.

We also fully expect these types of users to be able to modify and extend this automation for their own purposes, and we'll most likely to try add comments where that would help them in doing so.

---

## Paths Forwards

to crudely summarize a lot of advice (that I probably misinterpreted) from someone with more experience than me:

_**Go to where the learners already are and build what they need**_

> If you read this and know who you are, thank you for your time and apologies if I completely missed point.

- trying to build overly general & reusable open resources is doomed
  - reusability paradox
  - competing standards
  - competing curricula
  - incompatible contexts
  - ...
- trying to start new organizations is (often) doomed
  - competing organizations
  - funding issues
  - inconsistent volunteers
  - attracting learners
  - luck & timing
  - ...
- institutional change is slow and an uphill battle
  - politics
  - momentum
  - scale
  - incentives
  - ...

So where does this leave us?

- we will develop this specifically for & with the learning groups that are interested in collaborating
- we will work with groups that have contexts and constraints we would like to target, this can increase the chance of what we build being useful to others later on (ie. learner profile, financial constraints, physical resource constraints, learning objectives, ...)
- the specific future paths of this project will be determined by the most involved collaborating partners: their current needs and constraints will be priority. what others may need in the future will be secondary
