BEGIN;

TRUNCATE issues, projects, users RESTART IDENTITY CASCADE;

INSERT INTO users
  (username, password, first_name, last_name, email, tools, start_date, role, github)
VALUES
  ('admin', '$2y$08$u1cerXhTinrwHWdAbKvrie6XCOOw0PZATkQWM0gHMTz0fgbmPtiOu', 'Quiana', 'Lee', 'qlee91011@gmail.com', 'RESTful APIs', '12/23/2020', 'Admin', 'github.com/qlee91011'),
  ('chaanah', '$2y$08$u1cerXhTinrwHWdAbKvrie6XCOOw0PZATkQWM0gHMTz0fgbmPtiOu', 'Chaanah', 'Riddick', 'chaanah@gmail.com', 'JQuery', '12/23/2020', 'User', 'github.com/favoredpeaches'),
  ('naqam', '$2y$08$u1cerXhTinrwHWdAbKvrie6XCOOw0PZATkQWM0gHMTz0fgbmPtiOu', 'Naqam', 'Riddick', 'naqam@gmail.com', 'React', '12/23/2020', 'User', 'github.com/naqam');

INSERT INTO projects
  (name, description, tools, phase, status, start_date, owner_id, owner, collaboration, github)
VALUES
  ('Project 1', 'First description', 'HTML/CSS', 'Design', 'Delayed', '12/22/2020', '001', 'admin', 'Yes', 'github.com/admin/projecttracker'),
  ('Project 2', 'Second description ', 'JQuery', 'Development', 'In-Progress', '12/22/2020', '002', 'chaanah', 'Yes', 'github.com/chaanah/projecttracker'),
  ('Project 3', 'Third description', 'Express.js', 'Planning', 'In-Progress', '12/22/2020', '003', 'naqam', 'Yes', 'github.com/naqam/projecttracker');

INSERT INTO issues
  (name, description, project_id, tools, phase, status, start_date, owner_id, owner, collaboration, github)
VALUES
  ('Issue 1', 'First description', '001', 'Bootstrap', 'Design', 'Delayed', '12/22/2020', '001', 'admin', 'Yes', 'github.com/admin/projecttracker'),
  ('Issue 2', 'Second description', '002', 'Event delegation', 'Development', 'In-Progress', '12/22/2020', '002', 'chaanah', 'Yes', 'github.com/chaanah/projecttracker'),
  ('Issue 1', 'First description', '003', 'Route architecture', 'Design', 'In-Progress', '12/22/2020', '003', 'naqam', 'Yes', 'github.com/naqam/projecttracker');

COMMIT;