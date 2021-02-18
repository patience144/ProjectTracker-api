# ProjectTracker API

A simple API for the ProjectTracker App for all HTTP-related requests.

The following API allows software development teams to manage life-cycles, monitor deadlines, and update details specific details for software development projects, features and bugs. In future scope, it pretends to add project discussion forum, team collaboration and fine detail management for projects and issues for further customization.

This API stop represents a way for you to communicate with our server to organize your own projects and folder at your own client. Please read the instructions for more information.

The client-side may be found at: https://projecttracker.vercel.app/. \
_(CSS still a work-in-progress)_

## API Landing Page:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; https://desolate-springs-67598.herokuapp.com/

### Client

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; https://projecttracker.vercel.app/

### Client GitHub:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; https://github.com/patience144/projecttracker-client

### Deployment Platform:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Heroku

### Languages/Tools

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Javascript, Node.js, Express.js, Knex.js, PostgreSQL, Mocha, Chai, Supertest, Nodemon, Postgrator, Dotenv, JSON Web Tokens, Bcrypt, HTML5, CI scripts

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Loggers:** Morgan, Winston \
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Securities:** XSS, CORS, Helmet

---

## API Instructions

### Open Endpoints

Open endpoints that require no Authentication or Authorization.

- Signup: `POST /signup`
- Show Projects: `GET /api/projects`
- Show Issues`GET /api/issues`

---

### Endpoints that require Authentication

Closed endpoints that require a valid username and password to be included in the header body of the request.

- Login`POST /login`
  - Admin' credentials \_(or you may [Register
    - Username: `admin`
    - Password: `password`

---

### Endpoints that require Authorization

Closed endpoints that require a valid JSON Web Token to be inlcuded in the header 'Authorization' of the request. For 'Admin' privileges:

```
// Add to request header
headers: {'Authorization': 'Bearer my-secret-key'}
```

If sending content through request body (`POST`, `PATCH`), don't forget to add the following in the headers:

```
// Add to request header
headers" {'Content-Type': 'application/json'}
```

#### Project related

Each endpoint manipulates information related to projects.

- Create a Project: `POST /api/projects`
- Update a Project: `PATCH /api/projects/:projectID`
- Delete a Project: `DELETE /api/projects/:projectID`

#### Issue related

Each endpoint manipulates information related to issues.

- Create an Issue`POST /api/issues`
- Update an Issue`PATCH /api/projects/:issueID`
- Delete an Issue`DELETE /api/projects/:issueID`

#### User related

Each endpoint manipulates information related to users.

- Create an User`POST /api/users`
- Update an User`PATCH /api/projects/:userID`
- Delete an User`DELETE /api/projects/:userID`

---

### Local Set-Up

Complete the following steps to clone a local copy of the server:

1. Clone this repository to your local machine `git clone REPO-URL NEW-PROJECT-NAME`
2. `cd` into the cloned repository
3. Make a fresh start of the git history for this project with `rm -rf .git && git init`
4. Install the node dependencies `npm install`
5. Move the `example.env` Environment file to `.env`, which will be ignored by git but read by the express server: `mv example.env .env`
6. If you changed the project name, edit the contents of the `package.json` to use NEW-PROJECT-NAME

### Scripts

1. Start a database server with `pg_ctl start`
2. Create an user with Superuser permission, with `createuser -sPE admin` (if different name, make sure to update it in `.env`, `config.js`, `postgrator-config.js` files)
3. Create a database with any name, ideally `projecttracker` (if different name, make sure to update it in `.env`, `config.js`, `postgrator-config.js` files)
4. Run 'postgrator' with `npm run migrate` to migrate the tables to highest available version
5. Seed the tables with `psql -U admin -d projecttracker -f ./seeds/seed.projecttracker.sql` with preset data.
6. Start the application `npm start`; tests will run automatically
7. Alternatively, you may start the application with nodemon `npm run dev`; tests will not run unless manually set to

---

## Landing Page

! anding Pagepublic/img/landing.png)
