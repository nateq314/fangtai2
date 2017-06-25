import {
  GraphQLObjectType,
  GraphQLString,
  GraphQLInt,
} from 'graphql';

import knex from '../data/database';

export default new GraphQLObjectType({
  name: 'User',
  sqlTable: 'users',
  uniqueKey: 'id',
  fields: () => ({
    id: {
      type: GraphQLInt
    },
    username: {
      type: GraphQLString,
      sqlColumn: 'username'
    },
    first_name: {
      type: GraphQLString,
      sqlColumn: 'first_name'
    },
    last_name: {
      type: GraphQLString,
      sqlColumn: 'last_name'
    },
  })
});
