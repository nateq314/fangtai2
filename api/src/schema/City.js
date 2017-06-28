import {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLList,
  GraphQLString
} from 'graphql';
import GraphQLDateType from './date-type';

import knex from '../data/database';
import Country from './Country';
import Development from './Development';

export default new GraphQLObjectType({
  name: 'City',
  sqlTable: 'cities',
  uniqueKey: 'id',
  fields: () => ({
    id: {
      type: GraphQLInt
    },
    country: {
      type: Country,
      sqlJoin: (citiesTable, countriesTable, args) => {
        return `${citiesTable}.country_id = ${countriesTable}.id`;
      }
    },
    developments: {
      type: new GraphQLList(Development),
      sqlJoin: (thisTable, developmentsTable, args) => {
        return `${thisTable}.id = ${developmentsTable}.city_id`;
      }
    },
    name_english: {
      type: GraphQLString
    },
    name_chinese: {
      type: GraphQLString
    },
    created_at: {
      type: GraphQLDateType,
    },
    updated_at: {
      type: GraphQLDateType,
    },
  })
});
