import {
  GraphQLInt,
  GraphQLObjectType,
  GraphQLString,
} from 'graphql';
import GraphQLDateType from './date-type';

import knex from '../data/database';
import Development from './Development';

export default new GraphQLObjectType({
  name: 'Property',
  sqlTable: 'properties',
  uniqueKey: 'id',
  fields: () => ({
    id: { type: GraphQLInt },
    development: {
      type: Development,
      sqlColumn: 'dev_id',
      sqlJoin: (thisTable, developmentsTable, args) => {
        return `${thisTable}.dev_id = ${developmentsTable}.id`;
      }
    },
    bldg: {
      type: GraphQLString
    },
    house_num: {
      type: GraphQLString
    },
    num_bedrooms: {
      type: GraphQLInt
    },
    remarks: {
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
