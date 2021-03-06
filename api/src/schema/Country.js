import {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLList,
  GraphQLString,
} from 'graphql';
import GraphQLDateType from './date-type';

import knex from '../data/database';
import City from './City';

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
    cities: {
      type: new GraphQLList(City),
      sqlJoin: (countriesTable, citiesTable, args) => {
        return `${countriesTable}.id = ${citiesTable}.country_id`;
      }
    },
    created_at: {
      type: GraphQLDateType,
    },
    updated_at: {
      type: GraphQLDateType,
    },
  })
});
