import {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLString,
} from 'graphql';

import knex from '../data/database';

export default new GraphQLObjectType({
  name: 'Country',
  sqlTable: 'countries',
  uniqueKey: 'id',
  fields: () => ({
    id: {
      type: GraphQLInt
    },
    name_english: {
      type: GraphQLString,
    },
    abbreviation: {
      type: GraphQLString,
    },
    name_chinese: {
      type: GraphQLString,
    },
  })
});
