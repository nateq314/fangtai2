import {
  GraphQLObjectType,
  GraphQLString,
  GraphQLInt,
} from 'graphql';

import knex from '../data/database';
import Country from './Country';

export default new GraphQLObjectType({
  name: 'Guest',
  sqlTable: 'guests',
  uniqueKey: 'id',
  fields: () => ({
    id: {
      type: GraphQLInt
    },
    country: {
      type: Country,
      sqlJoin: (guestsTable, countriesTable, args) => {
        return `${guestsTable}.country_id = ${countriesTable}.id`;
      }
    },
    first_name: {
      type: GraphQLString,
    },
    middle_name: {
      type: GraphQLString,
    },
    last_name: {
      type: GraphQLString,
    },
  })
});
