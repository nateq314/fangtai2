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
import Country from './Country';
import Development from './Development';
import Guest from './Guest';
import User from './User';

export default new GraphQLObjectType({
  description: 'global query object',
  name: 'Query',
  fields: () => ({
    countries: {
      type: new GraphQLList(Country),
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    },
    developments: {
      type: new GraphQLList(Development),
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    },
    development: {
      type: Development,
      args: {
        id: { type: new GraphQLNonNull(GraphQLInt) },
      },
      where: (developmentsTable, args, context) => `${developmentsTable}.id = ${args}.id`,
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    },
    guests: {
      type: new GraphQLList(Guest),
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    },
    guest: {
      type: Guest,
      args: {
        id: { type: new GraphQLNonNull(GraphQLInt) }
      },
      where: (guestsTable, args, context) => `${guestsTable}.id = ${args.id}`,
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    },
    users: {
      type: new GraphQLList(User),
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    },
    user: {
      type: User,
      args: {
        id: { type: new GraphQLNonNull(GraphQLInt) }
      },
      where: (usersTable, args, context) => `${usersTable}.id = ${args.id}`,
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, {}, sql => knex.raw(sql));
      }
    }
  })
});
