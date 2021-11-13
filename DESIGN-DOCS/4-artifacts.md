# Artifacts

These are the things that make up the system, they are all standard GitHub things like organization accounts, repositories, issues and project boards. The magic happens because of _how_ you use them, not what they are.

## Guidebooks

There must be thorough and approachable guidebooks for all personas to do all the things they need. This can be hosted in the main `school-as-code` org as a gitbook or the like, each school shouldn't need their own unless they want to adjust the workflows.

## GitHub Accounts

1. **an independent learner** will need a personal account, that's all. They can host the home repo and all of their projects on their account.
2. **more than 1 learners studying together** will need:
   - A group organization for the home repo and all projects
   - individual personal accounts
3. **a group of learners with teacher support** will need:
   - A group organization for the home repo and all projects
     - this org should have two teams: _learners_ and _teachers_
   - individual personal accounts for everyone involved
4. **one centrally run group**
   - A group organization for the home repo and all projects.
     - This org should have 3 teams: _learners_, _teachers_, _admins_
   - individual personal accounts for everyone involved
5. **multiple centrally run group**
   - A group organization for each class' home repo and projects
     - This org should have 3 teams: _learners_, _teachers_, _admins_
   - A central organization for shared resources and to navigate the other class orgs
     - This org should have 2 teams: _teachers_, _admins_
   - individual personal accounts for everyone involved

## Other Accounts

A Discord server is helpful for chats, sharing and video calls. But you can get by with issues and discussions in the home repo

## Repositories

This is the list of all possible repos that can be generated. After this list is [Who Needs What](#who-needs-what), a breakdown of which repos are necessary in which use cases.

### "home" repository

> accessible to all teams

This will be the "landing page" for the class, incorporating all the information about the class, as well as links to the different materials, project boards, etc. It will be created from a template for the time being, but would be extendable with custom templates some point in the future.

We want a home repository because we want a landing page that has links to all the other things. It's the table-of-contents for everything else.

The "home" repository will also host the "project board" for teachers and learners to track progress with cards. These cards will be derived from issue templates for now, but similar to the static template used above, we could even see cards auto-generated for learners at some point dynamically.

We need project boards so that learners have a structured way to approach tasks. It also doubles conveniently as an introduction into the way that working programmers track progress, with boards such as trello or jira.

> - We want at least one starter repo clearly marked as a total sandbox/playground. People should feel like the software and repos are theirs to mess around with and recreate as they see fit. This also function as a way to introduce learners to source control, and the different ways that working programmers interact with it (eg, via the UI, the cli, VS Code)
> - HYF used the home repo for this role in the past, learners send their first PRs here with a /learner-bio file and post their first issues with the precourse. it does lead to chaos but was manageable because someone was there to manage the PRs. a separate sandbox repo for practice could be helpful but probably falls under the category of "materials", there's plenty of "my-first-contribution" type repos out there with step-by-step instructions that could be used

### admin repo

> private to the _admin_ team

used for the admin(s) to track admin type stuff. It's possible that there's only one teacher, who is also the admin.

> TODO - why do we need an admin repo? If we don't necessarily need it in the case of a 1-person study group, should it be taken out of the default, and added as an optional repo?
>
> - I included it in this doc to keep the whole plan in mind, we can scope and prioritize in _Scoping and Timeline_

### teachers repo

> private to the _teachers_ and _admin_ team

used for more class-oriented needs like scheduling who teaches what when, and sharing teaching tips or information about students.

> TODO - same questions as the admin repo above.
>
> - same answer as above

### learner repos

> private to each learner and the _admin_ team

used for learners to share in private with the class admins, this might include module retrospectives, feedback (both ways) or assessments

### Who needs what

1. **an independent learner** will need:
   - a home repository generated in their personal account
2. **more than 1 learners studying together**
   - a home repo generated in their class organization
   - optionally, private repos for each learner
3. **a group of learners with teacher support**
   - a home repo generated in their class org
   - private repos for each learner, also accessible to the admins/teachers
   - an admin repository for the teachers to share. it can have the combined features of an admin & teacher repo
4. **one centrally run group**
   - a home repo generated in the class repo
   - private repos for each learner, also accessible to the admins & teachers
   - a teacher's repo for planning classes
   - an admin repo for coordinating teachers and learners
5. **multiple centrally run group**
   1. in main centralized org
      - a home repo linking across all classes and shared resources
      - an admin repo linking to everything an admin needs
      - a teacher's repo linking to everything a teacher needs
   2. in each class org
      - a home repo linking to the project board & class-specific resources
      - private student repos

## Materials

In the base-case a material can be anything with a URL, but why not have an optional "standard" format for materials? It should be a minimal standard that more adds a layer of "educationyness" on top of whatever you want instead of prescribing what to make.

Here is [a rough idea](https://github.com/school-as-code-testing/a-module). The most important parts are in the `/docs` folder & the README, designed to help a learner navigate your material, everything else is up to the author. The key features are (inspired by [4cid](https://www.4cid.org/)):

- a general introduction to the material
- prioritized learning objectives
- a list of suggested external study references
- a series of "chapters" (workshops) to focus on key learning objectives. each workshop has a main focus, prep work, and post-work
- a collection of exercises to isolate and practice sub-skills, along with a study schedule aligning the tasks with the chapters
- a collection of deliverables to integrate sub-skills with "authentic" tasks, these are also aligned with the chapters
- teaching tips

### One Step Too Far

Why take this idea of a material one step too far?

A material is recursively defined as an ordered (or partially ordered) set of materials.

- **ordered set**: conventional curriculum with a linear trajectory
- **partially-ordered set**: a "knowledge graph" organized by conceptual dependencies, something [like this](https://exercism.org/tracks/javascript/concepts)

A material can have it's own `.materials.yml` file that defines it's elements. These sub-materials can be used as workshops, exercises, deliverables ... within the parent material.

We can informally classify materials by their scope and use-cases:

- **micromaterial**: a material focusing on a single learning objective, preferably reusable in different contexts
- **macromaterial**: a material encompassing multiple learning objectives, it's "story" is intricate enough that it cannot be easily recycled in different curricula (think _reusability paradox_). Modules at HYF fall in this category
- **metamaterials**: a material that does not directly contain it's own content but is composed of other materials. Their READMEs could be generated from the `.materials.yml` file. It's a lot like the "modules" section of a class repo but without students or a project board.
- ... it's a continuum, not discreet

---

> content as code! ... future plans for generating study materials
