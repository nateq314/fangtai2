import {
  GraphQLObjectType,
  GraphQLList,
  GraphQLNonNull,
  GraphQLString,
  GraphQLInt
} from 'graphql';

import joinMonster from 'join-monster';
import knex from '../data/database';
import dbCall from '../data/fetch';
import User from './User';

export default new GraphQLObjectType({
  description: 'global query object',
  name: 'Query',
  fields: () => ({
    users: {
      type: new GraphQLList(User),
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, (sql) => {
          return knex.raw(sql);
          console.log(sql);
          // return dbCall(sql, knex, context);
        });
      }
    }
  })
});
