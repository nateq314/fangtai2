import {
  GraphQLObjectType,
  GraphQLInt,
  GraphQLString
} from 'graphql';
import GraphQLDateType from './date-type';

import knex from '../data/database';
import City from './City';

export default new GraphQLObjectType({
  name: 'Development',
  sqlTable: 'developments',
  uniqueKey: 'id',
  fields: () => ({
    id: {
      type: GraphQLInt
    },
    city: {
      type: City,
      sqlJoin: (developmentsTable, citiesTable, args) => {
        return `${developmentsTable}.city_id = ${citiesTable}.id`;
      }
    },
    name_english: {
      type: GraphQLString
    },
    name_chinese: {
      type: GraphQLString
    },
    address: {
      type: GraphQLString
    },
    created_at: {
      type: GraphQLDateType
    },
    updated_at: {
      type: GraphQLDateType
    }
  })
});
