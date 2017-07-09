import {
  GraphQLInt,
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
      sqlJoin: (thisTable, developmentsTable, args) => {
        return `${thisTable}.development_id = ${developmentsTable}.id`;
      }
    },
    bldg: {
      type: GraphQLString
    },
    house_num: {
      type: GraphQLInt
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
