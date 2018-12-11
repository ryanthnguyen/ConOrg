# Individual Assignment Specifications

- Team: ConOrg
- Iteration: Iteration 2

## Special Roles

- Project Coordinator: xxx
- Quality Assurance Czar: xxx
- Video Demo Creators:
  - xxx
  - xxx, 999 (Team Member Name, Number of Points; filled in at end of iteration)
- Demo-Booth Operator: Ryan Nguyen, Wesley Jones

## Tasks: Wesley Jones

### Task 1: Add Approval Status to Applications

- Description: An approval table will be added to the GM, Panelist, and Dealer Forms that can be edited by an admin only.
- How to Evaluate: The admin can successfully change the table value to true, while a standard user cannot.
- Outcome of Task: All application forms can be approved by an admin.

### Task 2: Show Approved Data

- Description: Only the approved applications will show information on the relevant information pages.
- How to Evaluate: Viewing the information pages does not display any information for items not yet approved.
- Outcome of Task: Useful approved data is displayed to ordinary and non members on information pages.

### Task 3: Modify Controllers for Admin Use

- Description: Controllers will be set up such that it can be determined if the person is an admin or a user.
- How to Evaluate: A user will not be able to see what an admin can see when going to edit applications, such as approval status.
- Outcome of Task: All controllers determine the proper user and subsequent applications when being edited.

### Task 4: Create Admin Specific Edit and Show Pages

- Description: Alternative show and edit pages will be made for the admin specific purposes.
- How to Evaluate: An admin can see all data fields in each application, with the ability to edit or delete them.
- Outcome of Task: all applications and user edit pages are shown to admins with all of the form data being modifiable.

### Task 5: Information Display Editing

- Description: Information pages will be modified such that the data is presented in a clean manner.
- How to Evaluate: Lines are even, and links such as edit, etc. are aligned.
- Outcome of Task: Information is formatted into an easily readable state.

## Tasks: Ryan Nguyen

### Task 1: Model Updates

- Description: Update the models, databases, and validations
- How to Evaluate: check the source code
- Outcome of Task: Models are up to date with data that better represents them and is useable. Validations all work properly.

### Task 2: Unit Testing

- Description: Create unit testings for the models
- How to Evaluate: check the unit tests in the test folder
- Outcome of Task: Models all pass the tests.

### Task 3: Forms

- Description: Create general form and link it to all the form pages
- How to Evaluate: Able to create specific forms in each form page
- Outcome of Task: Forms properly represent each application submitted.

## Tasks: Josh Rhoades

### Task 1: Create Admin User Page

- Description: Create an Admin user paged based off the general wire-frame provided so that information is able to be checked as well as edited easily from one main page.
- How to Evaluate: Check page views once completed and then use the available options to view data.
- Outcome of Task: xxx

### Task 2: Input Validation on Login Credentials

- Description: Perform input validation on user logins for security purposes. For example, make sure to not be vulnerable to SQL injections via the login.
- How to Evaluate: Try a basic SQL injection.
- Outcome of Task: Handled by Devise.

### Task 3: General Login Credentials

- Description: Create a login portal for users so they are able to securely submit applications.
- How to Evaluate: Create a user login and boom!
- Outcome of Task: Handled by Devise.

## Tasks: Xavier Tilley

### Task 1: Create static information pages

- Description: Create static information pages to inform site visitors about the convention.
- How to Evaluate: Guest, Panelist, Gaming, Hotel, and About pages should exist, be readable and be routed to properly.
- Outcome of Task: Static pages exist and show relevant information.

### Task 2: Style the pages

- Description: Create CSS files to properly style the pages of the site.
- How to Evaluate: The pages should reflect the appropriate wireframe.
- Outcome of Task: Styling effectively covers every page, and makes the site easy to navigate.
