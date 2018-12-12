# Milestone 2 - Instructions to the Instructors

- Team: ConOrg
- GitHub Repo URL: https://github.com/memphis-cs-projects/comp4081-ConOrg.git
- Demo Video URL: https://www.youtube.com/watch?v=7ubHRmzbOX4
- Git Tag for Demo Video Version of Code: milestone2

## File Locations in Repository

- Milestone 2 individual assignments and outcomes: comp4081-ConOrg/docs/IndividualAssignmentSpecsIteration2.md
- Who-Did-What Document for Demo Video: comp4081-ConOrg/docs/Demo_Vid_Tasks.txt
- Up-to-Date Requirements and Design Artifacts:
  - User stories: comp4081-ConOrg/docs/UserStories.md
  - Sitemap: comp4081-ConOrg/docs/Sitemap V3.jpg
  - User interface designs: comp4081-ConOrg/docs/LandingPageUI.jpg
  - Class diagram of your model: comp4081-ConOrg/docs/ConOrg UML Diagram v2.jpg

## Running Instructions

- Upon cloning the repo and moving into its directory, you may need to run "bundle update rails" to solve a few gem conflicts.
- Obviously be sure to run rake db:setup as well.
- Seed data exists for an admin and a user. Admin (email: whjones@memphis.edu  pass: google) , user (email: john@smith.edu     pass: tester)
- for a user to see game applications, an admin must first approve their gm application.
- for any date/panel/game info to be visible on the site in general, an application must be approved. upon approval, it will be added to the information pages.
- All applications can be approved from the admin page, with link to the respective indices of application types.
- mini-racer may need to be comment out of the gem file as one member needed it to view the site.