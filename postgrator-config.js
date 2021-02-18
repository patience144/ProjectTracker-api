require('dotenv').config();
const { DATABASE_URL, TEST_DATABASE_URL, NODE_ENV } = require('./src/config');

const pg = require('pg');
pg.defaults.ssl = process.env.NODE_ENV === "production";


module.exports = {
  'migrationsDirectory': 'migrations',
  'driver': 'pg',
  'connectionString': (NODE_ENV === 'test') ? TEST_DATABASE_URL : DATABASE_URL
};