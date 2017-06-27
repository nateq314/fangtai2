import {
  GraphQLObjectType,
  GraphQLString,
  GraphQLInt,
} from 'graphql';
import GraphQLDateType from './date-type';

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
    },
    first_name: {
      type: GraphQLString,
    },
    last_name: {
      type: GraphQLString,
    },
    created_at: {
      type: GraphQLDateType,
    },
    updated_at: {
      type: GraphQLDateType,
    },
  })
});
