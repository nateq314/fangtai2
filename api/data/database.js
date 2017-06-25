import path from 'path';

export default require('knex')({
  client: 'pg',
  connection: {
    host: 'db',
    database: 'fangtai',
    user: 'api',
    password: 'abcdefgh'
  }
});
